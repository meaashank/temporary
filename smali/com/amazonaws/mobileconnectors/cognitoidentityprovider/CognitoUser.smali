###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
.super Ljava/lang/Object;
.source "CognitoUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static final b:I = 0x10

.field private static final m:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

.field private k:Ljava/lang/String;

.field private l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    const-class v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Lcom/amazonaws/logging/Log;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->m:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V
    .registers 8

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 213
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 215
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 216
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 217
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 218
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;
    .registers 5

    if-eqz p1, :cond_36

    .line 1132
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1133
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserRequest;-><init>()V

    .line 1134
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserRequest;->a(Ljava/lang/String;)V

    .line 1135
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserResult;

    move-result-object p1

    .line 1137
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;

    .line 1138
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserResult;->c()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;)V

    return-object v0

    .line 1140
    :cond_36
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .registers 3

    const/4 v0, 0x0

    .line 2280
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .registers 6

    .line 2295
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v0

    .line 2296
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v0

    .line 2299
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    invoke-direct {v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_15

    goto :goto_1e

    .line 2306
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object p1

    .line 2307
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    invoke-direct {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    .line 2309
    :goto_1e
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {p1, v1, v2, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;
    .registers 3

    .line 1485
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;
    .registers 3

    if-eqz p1, :cond_f

    .line 1471
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;-><init>()V

    .line 1472
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;->c(Ljava/lang/String;)V

    .line 1473
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object p1

    return-object p1

    .line 1475
    :cond_f
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "session token is invalid"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    .registers 7

    if-eqz p1, :cond_49

    .line 3289
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_49

    if-eqz p2, :cond_37

    if-eqz p5, :cond_37

    .line 3291
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;-><init>()V

    .line 3292
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;->a(Ljava/lang/String;)V

    .line 3293
    invoke-virtual {v0, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;->c(Ljava/lang/String;)V

    .line 3294
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;-><init>()V

    .line 3295
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->a(Ljava/lang/String;)V

    .line 3296
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->c(Ljava/lang/String;)V

    .line 3297
    invoke-virtual {p3, p5}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->e(Ljava/lang/String;)V

    .line 3298
    invoke-virtual {p3, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;)V

    .line 3299
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    move-result-object p1

    return-object p1

    :cond_37
    if-nez p2, :cond_41

    .line 3302
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "Device key is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3304
    :cond_41
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "Device name is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3308
    :cond_49
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "User is not authorized"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    .registers 11

    .line 3226
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->a()Ljava/lang/String;

    move-result-object v0

    .line 3227
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->b()Ljava/lang/String;

    move-result-object v1

    .line 3226
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3229
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;-><init>()V

    const/4 v2, 0x0

    .line 3230
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;->a(Ljava/lang/Boolean;)V

    .line 3232
    :try_start_19
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v4

    .line 3233
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->a()Ljava/lang/String;

    move-result-object v5

    const-string v1, "verifier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v1, "salt"

    .line 3234
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 3232
    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    move-result-object v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3c} :catch_74

    .line 3239
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v3

    .line 3240
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 3239
    invoke-static {v2, v3, v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3241
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "secret"

    .line 3242
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 3241
    invoke-static {v2, v3, v0, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3243
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v2

    .line 3244
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 3243
    invoke-static {v0, v2, p1, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-object v1

    :catch_74
    move-exception p1

    .line 3236
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Lcom/amazonaws/logging/Log;

    const-string v1, "Device confirmation failed: "

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;
    .registers 4

    if-eqz p2, :cond_22

    .line 1242
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1243
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeRequest;-><init>()V

    .line 1245
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeRequest;->a(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeRequest;->c(Ljava/lang/String;)V

    .line 1248
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 1249
    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    move-result-object p1

    return-object p1

    .line 1251
    :cond_22
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .registers 7

    .line 2713
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 2714
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 2718
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    const-string v1, "USER_PASSWORD_AUTH"

    .line 2719
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;)V

    .line 2720
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->c(Ljava/lang/String;)V

    const-string v1, "USERNAME"

    .line 2722
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    move-result-object v2

    .line 2721
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    const-string v1, "PASSWORD"

    .line 2724
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/lang/String;

    move-result-object v2

    .line 2723
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    const-string v1, "SECRET_HASH"

    .line 2725
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 2726
    invoke-static {v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2725
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2728
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 2729
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7c

    .line 2730
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2731
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 2732
    invoke-virtual {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 2734
    :cond_79
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->c(Ljava/util/Map;)V

    :cond_7c
    return-object v0

    .line 2715
    :cond_7d
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "User name and password are required"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .registers 8

    .line 2812
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 2813
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    const-string v1, "USER_SRP_AUTH"

    .line 2814
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;)V

    .line 2815
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->c(Ljava/lang/String;)V

    const-string v1, "SECRET_HASH"

    .line 2816
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 2817
    invoke-static {v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2816
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    const-string v1, "USERNAME"

    .line 2819
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    move-result-object v2

    .line 2818
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    const-string v1, "SRP_A"

    .line 2821
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b()Ljava/math/BigInteger;

    move-result-object p2

    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 2820
    invoke-virtual {v0, v1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2822
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    if-nez p2, :cond_56

    const-string p2, "DEVICE_KEY"

    .line 2825
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 2824
    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2823
    invoke-virtual {v0, p2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    goto :goto_5d

    :cond_56
    const-string p2, "DEVICE_KEY"

    .line 2827
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2830
    :goto_5d
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_95

    .line 2831
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_95

    .line 2832
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2833
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 2834
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 2836
    :cond_92
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->c(Ljava/util/Map;)V

    .line 2838
    :cond_95
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a8

    .line 2840
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 2841
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 2842
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 2844
    :cond_a8
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;ILjava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;ILjava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;ILjava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;
    .registers 6

    if-eqz p1, :cond_36

    .line 3259
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3260
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;-><init>()V

    const/4 v1, 0x1

    if-ge p2, v1, :cond_1a

    const/16 p2, 0xa

    .line 3262
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;->a(Ljava/lang/Integer;)V

    goto :goto_21

    .line 3264
    :cond_1a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;->a(Ljava/lang/Integer;)V

    .line 3266
    :goto_21
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;->c(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;->a(Ljava/lang/String;)V

    .line 3268
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;

    move-result-object p1

    return-object p1

    .line 3270
    :cond_36
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "User is not authorized"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .registers 5

    .line 2902
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 2903
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;)V

    const-string v1, "DEVICE_SRP_AUTH"

    .line 2905
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->c(Ljava/lang/String;)V

    const-string v1, "USERNAME"

    .line 2906
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    const-string v1, "SRP_A"

    .line 2910
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b()Ljava/math/BigInteger;

    move-result-object p1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 2908
    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    const-string p1, "DEVICE_KEY"

    .line 2911
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    const-string p1, "SECRET_HASH"

    .line 2913
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 2916
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .registers 6

    .line 131
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;"
        }
    .end annotation

    const-string v0, "USERNAME"

    .line 2969
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "USER_ID_FOR_SRP"

    .line 2970
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "SRP_B"

    .line 2971
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "SALT"

    .line 2972
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "SECRET_BLOCK"

    .line 2973
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2975
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    .line 2976
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 2978
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    .line 2980
    new-instance v0, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 2981
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12f

    .line 2985
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 2986
    invoke-virtual {p5, v1, p2, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p2

    .line 2989
    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    :try_start_6b
    const-string v0, "HmacSHA256"

    .line 2993
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2994
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2995
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 2996
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object p2

    const-string v2, "_"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aget-object p2, p2, v2

    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 2997
    sget-object p2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 2999
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    .line 3000
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 3002
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM d HH:mm:ss z yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 3004
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3005
    invoke-virtual {p2, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 3006
    sget-object p5, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p5

    .line 3008
    invoke-virtual {v0, p5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p5
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_c4} :catch_126

    .line 3013
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PASSWORD_CLAIM_SECRET_BLOCK"

    .line 3014
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "PASSWORD_CLAIM_SIGNATURE"

    .line 3016
    new-instance v1, Ljava/lang/String;

    .line 3017
    invoke-static {p5}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object p5

    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p5, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3016
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TIMESTAMP"

    .line 3018
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "USERNAME"

    .line 3019
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "DEVICE_KEY"

    .line 3020
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SECRET_HASH"

    .line 3021
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3023
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 3024
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->c(Ljava/lang/String;)V

    .line 3025
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {p1, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->e(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/util/Map;)V

    .line 3028
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11e

    .line 3030
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 3031
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 3034
    :cond_11e
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    return-object p1

    :catch_126
    move-exception p1

    .line 3010
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p3, "SRP error"

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 2982
    :cond_12f
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p2, "SRP error, B cannot be zero"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;
    .registers 4

    if-eqz p2, :cond_26

    .line 1737
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1738
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;-><init>()V

    .line 1739
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;->a(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;->a(Ljava/util/Collection;)V

    .line 1742
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;

    move-result-object p1

    return-object p1

    .line 1744
    :cond_26
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;
    .registers 5

    if-eqz p1, :cond_23

    .line 1597
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1598
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;-><init>()V

    .line 1599
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;->a(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;->e(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;->g(Ljava/lang/String;)V

    .line 1602
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object p1

    return-object p1

    .line 1604
    :cond_23
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;
    .registers 3

    .line 1634
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;
    .registers 5

    if-eqz p1, :cond_15

    .line 1618
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;-><init>()V

    .line 1619
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;->c(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;->e(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;->g(Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object p1

    return-object p1

    .line 1624
    :cond_15
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "session token is invalid"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 5

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 7

    .line 2657
    :try_start_0
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;-><init>()V

    .line 2658
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)V

    .line 2661
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->c()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a(Ljava/util/Map;)V

    .line 2662
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception p1

    .line 2664
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;

    invoke-direct {p2, p0, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    return-object p2
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 15

    .line 2525
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;

    invoke-direct {p2, p0, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    if-nez p1, :cond_8

    return-object p2

    .line 2537
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/util/Map;)V

    .line 2538
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_60

    .line 2541
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object p2

    .line 2540
    invoke-direct {p0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object p2

    .line 2542
    invoke-direct {p0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 2543
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object p1

    .line 2544
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object p1

    if-nez p1, :cond_31

    .line 2546
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    goto/16 :goto_117

    .line 2553
    :cond_31
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    move-result-object p4

    if-eqz p4, :cond_59

    .line 2555
    invoke-virtual {p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;->a()Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_59

    .line 2556
    new-instance p4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    .line 2557
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    move-object v0, p4

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V

    .line 2559
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;

    invoke-direct {p1, p0, p3, p2, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    goto/16 :goto_117

    .line 2566
    :cond_59
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    goto/16 :goto_117

    :cond_60
    const-string v0, "PASSWORD_VERIFIER"

    .line 2574
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2575
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;

    invoke-direct {p1, p0, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    return-object p1

    :cond_6e
    const-string v0, "SMS_MFA"

    .line 2584
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    const-string v0, "SOFTWARE_TOKEN_MFA"

    .line 2585
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    goto/16 :goto_106

    :cond_80
    const-string v0, "SELECT_MFA_TYPE"

    .line 2594
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2595
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    move v8, p4

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2597
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;)V

    goto/16 :goto_117

    :cond_a1
    const-string v0, "MFA_SETUP"

    .line 2603
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 2604
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    move v8, p4

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2606
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;)V

    goto :goto_117

    :cond_c1
    const-string v0, "DEVICE_SRP_AUTH"

    .line 2612
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 2613
    invoke-direct {p0, p1, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_117

    :cond_ce
    const-string v0, "NEW_PASSWORD_REQUIRED"

    .line 2614
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 2615
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    move-object v0, p2

    move-object v1, p0

    move-object v6, p1

    move v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2618
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;)V

    goto :goto_117

    .line 2625
    :cond_ee
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    move-object v0, p2

    move-object v1, p0

    move-object v6, p1

    move v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2628
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    goto :goto_117

    .line 2586
    :cond_106
    :goto_106
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2588
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    :goto_117
    return-object p1
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 9

    .line 2755
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2756
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 2755
    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2757
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2758
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 2757
    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2759
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;-><init>(Ljava/lang/String;)V

    .line 2760
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    move-result-object v2

    .line 2763
    :try_start_25
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 2764
    invoke-interface {v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    move-result-object v2

    const-string v3, "DEVICE_PASSWORD_VERIFIER"

    .line 2766
    invoke-virtual {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 2767
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    move-result-object p1

    .line 2770
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 2771
    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    move-result-object p1

    .line 2772
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 2774
    :cond_47
    invoke-direct {p0, v2, v4, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_4b
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/NotAuthorizedException; {:try_start_25 .. :try_end_4b} :catch_53
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4b} :catch_4c

    return-object p1

    :catch_4c
    move-exception p1

    .line 2789
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;

    invoke-direct {p3, p0, p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    return-object p3

    .line 2778
    :catch_53
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2779
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;

    invoke-direct {p1, p0, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Z)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 4

    if-eqz p2, :cond_2f

    .line 2100
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_27

    .line 2104
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsRequest;-><init>()V

    .line 2105
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsRequest;->a(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsRequest;->a(Ljava/util/Collection;)V

    .line 2108
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 2109
    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsResult;

    return-void

    .line 2102
    :cond_27
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "user attributes is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2111
    :cond_2f
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 632
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;-><init>()V

    .line 633
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->e(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->a(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->c(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->g(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->i(Ljava/lang/String;)V

    .line 638
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 639
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 641
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 642
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 646
    :cond_34
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordResult;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 5

    if-eqz p3, :cond_24

    .line 1047
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1048
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;-><init>()V

    .line 1049
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;->a(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;->c(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;->e(Ljava/lang/String;)V

    .line 1052
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordResult;

    return-void

    .line 1054
    :cond_24
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5

    .line 338
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 339
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 341
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object p1

    .line 343
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object p1

    .line 344
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object p1

    .line 345
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 347
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 348
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 351
    :cond_3e
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpResult;

    return-void
.end method

.method private a(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_34

    .line 1829
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez p1, :cond_b

    return-void

    .line 1838
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_13

    return-void

    .line 1843
    :cond_13
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesRequest;-><init>()V

    .line 1844
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesRequest;->a(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesRequest;->a(Ljava/util/Collection;)V

    .line 1847
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesResult;

    return-void

    .line 1830
    :cond_2c
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1826
    :cond_34
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3319
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    if-nez v0, :cond_38

    if-eqz p1, :cond_38

    const-string v0, "USERNAME"

    .line 3321
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "USERNAME"

    .line 3323
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    .line 3324
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 3326
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    if-nez p1, :cond_38

    .line 3327
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    :cond_38
    return-void
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;
    .registers 3

    if-eqz p1, :cond_1d

    .line 1454
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1455
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;-><init>()V

    .line 1456
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;->a(Ljava/lang/String;)V

    .line 1457
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object p1

    return-object p1

    .line 1459
    :cond_1d
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .registers 8

    .line 2860
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    const-string v1, "CUSTOM_AUTH"

    .line 2861
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;)V

    .line 2862
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->c(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/util/Map;

    move-result-object v1

    .line 2869
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    if-eqz v2, :cond_34

    const-string v2, "SECRET_HASH"

    .line 2870
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_34

    .line 2871
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    const-string v2, "SECRET_HASH"

    .line 2872
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    const-string v2, "SRP_A"

    .line 2874
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "SRP_A"

    .line 2875
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b()Ljava/math/BigInteger;

    move-result-object p2

    const/16 v3, 0x10

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    :cond_4f
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/util/Map;)V

    .line 2879
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8e

    .line 2880
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8e

    .line 2881
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2882
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 2883
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 2885
    :cond_8b
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->c(Ljava/util/Map;)V

    .line 2887
    :cond_8e
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    return-object v0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;
    .registers 5

    if-eqz p3, :cond_25

    .line 1345
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1346
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;-><init>()V

    .line 1347
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;->c(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;->a(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;->e(Ljava/lang/String;)V

    .line 1351
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;

    move-result-object p1

    return-object p1

    .line 1353
    :cond_25
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    return-void
.end method

.method private b(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_94

    .line 2159
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz p1, :cond_8c

    .line 2160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8c

    .line 2163
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;-><init>()V

    .line 2164
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;->a(Ljava/lang/String;)V

    .line 2165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;

    const-string v1, "SMS_MFA"

    .line 2166
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2167
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;-><init>()V

    .line 2168
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;->a(Ljava/lang/Boolean;)V

    .line 2169
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;->c(Ljava/lang/Boolean;)V

    .line 2170
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;)V

    :cond_5b
    const-string v1, "TOTP_MFA"

    .line 2172
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2173
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;-><init>()V

    .line 2175
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->a(Ljava/lang/Boolean;)V

    .line 2176
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->b()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->c(Ljava/lang/Boolean;)V

    .line 2177
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;)V

    goto :goto_25

    .line 2180
    :cond_86
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceResult;

    return-void

    .line 2161
    :cond_8c
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "mfa settings are empty"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2183
    :cond_94
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "user is not authenticated"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 5

    .line 2402
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V

    return-object v0
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    return-void
.end method

.method private c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 3

    if-eqz p1, :cond_2a

    .line 1933
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1937
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;-><init>()V

    .line 1938
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;->a(Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;

    return-void

    .line 1934
    :cond_22
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1930
    :cond_2a
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    return-object p0
.end method

.method private d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 5

    .line 2462
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V

    return-object v0
.end method

.method static synthetic d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    return-void
.end method

.method private d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 3

    if-eqz p1, :cond_26

    .line 2016
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2020
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserRequest;-><init>()V

    .line 2021
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserRequest;->a(Ljava/lang/String;)V

    .line 2023
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserRequest;)V

    return-void

    .line 2017
    :cond_1e
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2013
    :cond_26
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 5

    .line 2685
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V

    return-object v0
.end method

.method static synthetic e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 8

    .line 2250
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CognitoIdentityProvider."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".idToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CognitoIdentityProvider."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".accessToken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CognitoIdentityProvider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".refreshToken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CognitoIdentityProvider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".LastAuthUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2262
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;->a_()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b9} :catch_ba

    goto :goto_c2

    :catch_ba
    move-exception p1

    .line 2268
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Lcom/amazonaws/logging/Log;

    const-string v1, "Error while writing to SharedPreferences."

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_c2
    return-void
.end method

.method static synthetic f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    return-object p0
.end method

.method private f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .registers 4

    .line 2321
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    move-result-object v0

    .line 2323
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 2324
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    move-result-object v0

    .line 2325
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 2328
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v0

    .line 2329
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    move-result-object p1

    .line 2328
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object p1

    return-object p1

    .line 2326
    :cond_1d
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    return-object p0
.end method

.method private g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .registers 5

    .line 2927
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    const-string v1, "REFRESH_TOKEN"

    .line 2929
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;->a_()Ljava/lang/String;

    move-result-object v2

    .line 2928
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2930
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    if-nez v1, :cond_3d

    .line 2931
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 2932
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-static {p1, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    goto :goto_3d

    .line 2935
    :cond_2b
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2936
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 2935
    invoke-static {p1, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    :cond_3d
    :goto_3d
    const-string p1, "DEVICE_KEY"

    .line 2939
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    const-string p1, "SECRET_HASH"

    .line 2941
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2943
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->c(Ljava/lang/String;)V

    const-string p1, "REFRESH_TOKEN_AUTH"

    .line 2944
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Ljava/lang/String;)V

    .line 2945
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 2947
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 2948
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 2951
    :cond_68
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    return-object v0
.end method

.method private g()Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    .registers 4

    .line 419
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 421
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 422
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    .line 423
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    if-eqz v1, :cond_31

    .line 427
    new-instance v2, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 428
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 432
    :cond_31
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .registers 4

    .line 532
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;-><init>()V

    .line 533
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->a(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->c(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->e(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 537
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 539
    new-instance v2, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 540
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 544
    :cond_2e
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    return-object p0
.end method

.method private i()V
    .registers 8

    :try_start_0
    const-string v0, "CognitoIdentityProvider.%s.%s.idToken"

    const/4 v1, 0x2

    .line 2193
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CognitoIdentityProvider.%s.%s.accessToken"

    .line 2195
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    aput-object v6, v3, v5

    .line 2196
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CognitoIdentityProvider.%s.%s.refreshToken"

    .line 2197
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    aput-object v6, v1, v4

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    aput-object v4, v1, v5

    .line 2198
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2200
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V

    .line 2202
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_51

    :catch_49
    move-exception v0

    .line 2205
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Error while deleting from SharedPreferences"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_51
    return-void
.end method

.method private j()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .registers 7

    .line 2215
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    .line 2219
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CognitoIdentityProvider."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".idToken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CognitoIdentityProvider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".accessToken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CognitoIdentityProvider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".refreshToken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2226
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v4, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 2227
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v5, v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2228
    invoke-virtual {v5, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    .line 2229
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v5, v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2230
    invoke-virtual {v5, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    .line 2231
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v5, v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2232
    invoke-virtual {v5, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    .line 2233
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {v3, v4, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a2} :catch_a4

    move-object v0, v3

    goto :goto_ac

    :catch_a4
    move-exception v1

    .line 2238
    sget-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Lcom/amazonaws/logging/Log;

    const-string v3, "Error while reading SharedPreferences"

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_ac
    :goto_ac
    return-object v0
.end method

.method private k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;
    .registers 3

    .line 3339
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .registers 10

    .line 3054
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "USERNAME"

    .line 3055
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    .line 3057
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "SRP_B"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 3058
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a

    .line 3062
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "SALT"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 3063
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-virtual {p4, v2, p2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p2

    .line 3066
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    :try_start_4d
    const-string v0, "HmacSHA256"

    .line 3070
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 3071
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3072
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3073
    sget-object p2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 3074
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    sget-object p3, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 3075
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c()Ljava/util/Map;

    move-result-object p2

    const-string p3, "SECRET_BLOCK"

    .line 3076
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3075
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    .line 3077
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 3079
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "EEE MMM d HH:mm:ss z yyyy"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p3, "UTC"

    .line 3081
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3082
    invoke-virtual {p2, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 3083
    sget-object p3, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 3085
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p3
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_a4} :catch_111

    .line 3090
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    invoke-static {p4, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    .line 3092
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "PASSWORD_CLAIM_SECRET_BLOCK"

    .line 3094
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "SECRET_BLOCK"

    .line 3095
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3093
    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PASSWORD_CLAIM_SIGNATURE"

    .line 3096
    new-instance v1, Ljava/lang/String;

    .line 3097
    invoke-static {p3}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object p3

    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3096
    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "TIMESTAMP"

    .line 3098
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "USERNAME"

    .line 3099
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "DEVICE_KEY"

    .line 3100
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "SECRET_HASH"

    .line 3101
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 3104
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->c(Ljava/lang/String;)V

    .line 3105
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->e(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {p2, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/util/Map;)V

    .line 3108
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    return-object p2

    :catch_111
    move-exception p1

    .line 3087
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p3, "SRP error"

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 3059
    :cond_11a
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p2, "SRP error, B cannot be zero"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 5

    .line 775
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    invoke-direct {v0, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 846
    invoke-virtual {p0, p1, v0, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p3, :cond_11

    .line 848
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;

    invoke-direct {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/Runnable;)V

    return-object p2

    :cond_11
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 7

    if-eqz p1, :cond_18

    .line 2349
    :try_start_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2350
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->k()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DEVICE_KEY"

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 2351
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :catch_14
    move-exception p1

    goto :goto_24

    :catch_16
    move-exception p1

    goto :goto_2a

    .line 2353
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 2354
    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    move-result-object p1

    const/4 v0, 0x0

    .line 2355
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_23
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException; {:try_start_2 .. :try_end_23} :catch_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_14

    return-object p1

    .line 2379
    :goto_24
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;

    invoke-direct {p3, p0, p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    return-object p3

    .line 2358
    :goto_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2359
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2361
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;

    invoke-direct {p1, p0, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    return-object p1

    .line 2371
    :cond_49
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;

    invoke-direct {p3, p0, p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;)V

    return-object p3
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 9

    .line 903
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 904
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SMS_MFA"

    .line 905
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "SMS_MFA_CODE"

    .line 906
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_1c
    const-string v2, "SOFTWARE_TOKEN_MFA"

    .line 907
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "SOFTWARE_TOKEN_MFA_CODE"

    .line 908
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    const-string p1, "USERNAME"

    .line 910
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "DEVICE_KEY"

    .line 911
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SECRET_HASH"

    .line 912
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->e(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->c(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/util/Map;)V

    .line 917
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 918
    invoke-virtual {p0, v0, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(ILjava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;)V
    .registers 12

    if-eqz p3, :cond_16

    .line 3128
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ILjava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3157
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 3123
    :cond_16
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V
    .registers 5

    if-eqz p2, :cond_10

    .line 1654
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1689
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1650
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2038
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 2040
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2063
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 2036
    :cond_14
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 677
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    invoke-direct {v1, p0, p1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 711
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 672
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 458
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    invoke-direct {v1, p0, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 453
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 1870
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;

    invoke-direct {v1, p0, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1895
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1866
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 1074
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;

    invoke-direct {v1, p0, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1098
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1070
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 364
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 362
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
    .registers 5

    if-eqz p2, :cond_10

    .line 1368
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1413
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1364
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .registers 5

    if-eqz p2, :cond_10

    .line 1168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1164
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .registers 6

    if-eqz p3, :cond_10

    .line 568
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 591
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 566
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 12

    if-eqz p3, :cond_16

    .line 983
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 978
    :cond_16
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
    .registers 14

    if-eqz p4, :cond_17

    .line 1502
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1547
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1498
    :cond_17
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 6

    if-eqz p3, :cond_10

    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 270
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 1762
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1786
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1758
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .registers 6

    const-string v0, "PASSWORD_VERIFIER"

    .line 867
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 868
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v0, "CUSTOM_CHALLENGE"

    .line 870
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 871
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    :cond_22
    const-string v0, "USER_PASSWORD"

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 874
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 876
    :cond_33
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;

    invoke-direct {p3, p0, p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)V

    return-object p3
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(ILjava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;)V
    .registers 7

    if-eqz p3, :cond_37

    .line 3175
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;ILjava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;

    move-result-object p1

    .line 3177
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3178
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;

    .line 3179
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-direct {v1, v0, p0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3181
    :cond_2e
    invoke-interface {p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;->a(Ljava/util/List;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 3183
    invoke-interface {p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;->a(Ljava/lang/Exception;)V

    :goto_36
    return-void

    .line 3171
    :cond_37
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V
    .registers 6

    if-eqz p2, :cond_3b

    .line 1711
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 1712
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;

    move-result-object p1

    .line 1715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1718
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;->a()Ljava/util/List;

    move-result-object p1

    .line 1717
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    .line 1719
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    invoke-direct {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1722
    :cond_32
    invoke-interface {p2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;->a(Ljava/util/List;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p1

    .line 1724
    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;->a(Ljava/lang/Exception;)V

    :goto_3a
    return-void

    .line 1707
    :cond_3b
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p2, :cond_f

    .line 2085
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 2087
    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_e
    return-void

    .line 2081
    :cond_f
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 5

    if-eqz p1, :cond_26

    .line 743
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 744
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    :try_end_b
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidParameterException; {:try_start_2 .. :try_end_b} :catch_21
    .catch Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException; {:try_start_2 .. :try_end_b} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_25

    :catch_c
    move-exception v0

    .line 752
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    goto :goto_25

    .line 748
    :catch_11
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 750
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    goto :goto_25

    :catch_21
    move-exception v0

    .line 746
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    :goto_25
    return-void

    .line 739
    :cond_26
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidParameterException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 516
    :try_start_2
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    move-result-object v0

    .line 517
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 520
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    .line 522
    invoke-interface {p1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 524
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Ljava/lang/Exception;)V

    :goto_1d
    return-void

    .line 510
    :cond_1e
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    if-eqz p1, :cond_15

    .line 1914
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 1915
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e()V

    .line 1916
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 1918
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_14
    return-void

    .line 1910
    :cond_15
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 1118
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    move-result-object v0

    .line 1119
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 1121
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void

    .line 1114
    :cond_13
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .registers 4

    if-eqz p1, :cond_18

    .line 407
    :try_start_2
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    move-result-object v0

    .line 408
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 409
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 408
    invoke-interface {p1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    .line 411
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Ljava/lang/Exception;)V

    :goto_17
    return-void

    .line 404
    :cond_18
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
    .registers 12

    if-eqz p2, :cond_48

    .line 1428
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 1430
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1431
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_19

    .line 1434
    :cond_13
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1437
    :goto_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;->b()Ljava/lang/String;

    move-result-object v7

    .line 1438
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "SOFTWARE_TOKEN_MFA"

    .line 1439
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "secretKey"

    .line 1440
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;Ljava/util/Map;ZLjava/lang/String;Z)V

    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p1

    .line 1443
    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/Exception;)V

    :goto_47
    return-void

    .line 1423
    :cond_48
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .registers 4

    if-eqz p2, :cond_1c

    .line 1224
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 1223
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    move-result-object p1

    .line 1225
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 1226
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 1225
    invoke-interface {p2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 1228
    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Ljava/lang/Exception;)V

    :goto_1b
    return-void

    .line 1219
    :cond_1c
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .registers 4

    if-eqz p3, :cond_e

    .line 618
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-interface {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 621
    invoke-interface {p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Ljava/lang/Exception;)V

    :goto_d
    return-void

    .line 615
    :cond_e
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 5

    if-eqz p3, :cond_12

    .line 1031
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 1032
    invoke-interface {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 1034
    invoke-interface {p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_11
    return-void

    .line 1028
    :cond_12
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
    .registers 7

    if-eqz p4, :cond_3f

    .line 1565
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 1567
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1568
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_17

    .line 1571
    :cond_12
    invoke-direct {p0, v0, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object p1

    const/4 p2, 0x0

    .line 1574
    :goto_17
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;->b()Ljava/lang/String;

    move-result-object p3

    .line 1575
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResponseType;->ERROR:Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResponseType;

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResponseType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    if-eqz p2, :cond_2d

    .line 1579
    invoke-interface {p4, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/String;)V

    goto :goto_3e

    :cond_2d
    const/4 p1, 0x0

    .line 1581
    invoke-interface {p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/String;)V

    goto :goto_3e

    .line 1576
    :cond_32
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p2, "verification failed"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p1

    .line 1584
    invoke-interface {p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/Exception;)V

    :goto_3e
    return-void

    .line 1560
    :cond_3f
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p3, :cond_e

    .line 323
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Z)V

    .line 324
    invoke-interface {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 326
    invoke-interface {p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_d
    return-void

    .line 320
    :cond_e
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_12

    .line 1808
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 1809
    invoke-interface {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 1811
    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_11
    return-void

    .line 1804
    :cond_12
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c()Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    return-object v0
.end method

.method public c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 1954
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;

    invoke-direct {v1, p0, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1978
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1950
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 12

    if-eqz p3, :cond_16

    .line 1276
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1272
    :cond_16
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_14

    .line 2125
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 2127
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2150
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 2123
    :cond_14
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .registers 5

    .line 928
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    if-eqz v1, :cond_59

    .line 933
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    if-eqz v1, :cond_17

    .line 934
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->e()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 935
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    monitor-exit v0

    return-object v1

    .line 939
    :cond_17
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 941
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->e()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 942
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 943
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    monitor-exit v0

    return-object v1

    .line 946
    :cond_27
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_61

    if-eqz v2, :cond_51

    .line 948
    :try_start_2d
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 949
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 950
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    :try_end_3a
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/NotAuthorizedException; {:try_start_2d .. :try_end_3a} :catch_45
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3c
    .catchall {:try_start_2d .. :try_end_3a} :catchall_61

    :try_start_3a
    monitor-exit v0

    return-object v1

    :catch_3c
    move-exception v1

    .line 955
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string v3, "Failed to authenticate user"

    invoke-direct {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_45
    move-exception v1

    .line 952
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i()V

    .line 953
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v3, "User is not authenticated"

    invoke-direct {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 958
    :cond_51
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v2, "User is not authenticated"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :cond_59
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v2, "User-ID is null"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_61
    move-exception v1

    .line 959
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3a .. :try_end_63} :catchall_61

    throw v1
.end method

.method public d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 1997
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 1998
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 2000
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_11
    return-void

    .line 1993
    :cond_12
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 5

    if-eqz p3, :cond_12

    .line 1327
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 1326
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;

    .line 1328
    invoke-interface {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 1330
    invoke-interface {p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_11
    return-void

    .line 1322
    :cond_12
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    .line 1854
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 1855
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i()V

    return-void
.end method

.method public f()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;
    .registers 10

    .line 3194
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    if-nez v0, :cond_47

    .line 3195
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 3196
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    goto :goto_47

    .line 3198
    :cond_19
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 3199
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 3200
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    if-nez v0, :cond_47

    .line 3201
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 3202
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 3203
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    .line 3202
    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 3207
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    if-eqz v0, :cond_5b

    .line 3208
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Landroid/content/Context;

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V

    return-object v0

    :cond_5b
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 5

    .line 272
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->b:Z

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 275
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 278
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->b:Z

    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Z)V

    .line 279
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v1

    .line 286
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 293
    :goto_25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass1.RunnableC00201 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$1$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass1.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$1$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;Ljava/lang/Exception;)V
    .registers 3

    .line 286
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$1$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass10 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$10)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;)V
    .registers 4

    .line 1074
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1077
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1080
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1081
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    move-result-object v1

    .line 1082
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$1;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v1

    .line 1089
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;Ljava/lang/Exception;)V

    .line 1096
    :goto_27
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass10.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$10$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;)V
    .registers 3

    .line 1082
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass10.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$10$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;Ljava/lang/Exception;)V
    .registers 3

    .line 1089
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1092
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$10$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass11 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$11)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .registers 5

    .line 1168
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1171
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1174
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1175
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    move-result-object v1

    .line 1177
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$1;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception v1

    .line 1186
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;Ljava/lang/Exception;)V

    .line 1193
    :goto_29
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass11.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$11$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;)V
    .registers 3

    .line 1177
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1180
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    .line 1182
    invoke-virtual {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 1180
    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass11.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$11$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;Ljava/lang/Exception;)V
    .registers 3

    .line 1186
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1189
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$11$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass12 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$12)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 6

    .line 1276
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1279
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1282
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1283
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;

    .line 1284
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    goto :goto_2b

    :catch_24
    move-exception v1

    .line 1291
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1298
    :goto_2b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass12.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$12$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;)V
    .registers 2

    .line 1284
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1287
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass12.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$12$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;Ljava/lang/Exception;)V
    .registers 3

    .line 1291
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1294
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$12$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass13 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$13)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
    .registers 5

    .line 1368
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1371
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1375
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1377
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1378
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_2e

    .line 1381
    :cond_27
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;

    move-result-object v1

    const/4 v2, 0x0

    .line 1384
    :goto_2e
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;->b()Ljava/lang/String;

    move-result-object v3

    .line 1385
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "type"

    const-string v6, "SOFTWARE_TOKEN_MFA"

    .line 1386
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "secretKey"

    .line 1387
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_4f

    .line 1389
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;

    invoke-direct {v1, p0, v4, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_5c

    .line 1396
    :cond_4f
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;

    invoke-direct {v1, p0, v4, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_54} :catch_55

    goto :goto_5c

    :catch_55
    move-exception v1

    .line 1404
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$3;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1411
    :goto_5c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass13.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$13$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4

    .line 1389
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1392
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    new-instance v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->a:Ljava/util/Map;

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$1;->b:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;Ljava/util/Map;ZLjava/lang/String;Z)V

    invoke-interface {v0, v10}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass13.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$13$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4

    .line 1396
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1399
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    new-instance v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->a:Ljava/util/Map;

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$2;->b:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;Ljava/util/Map;ZLjava/lang/String;Z)V

    invoke-interface {v0, v10}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass13.AnonymousClass3 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$13$3)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$3;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;Ljava/lang/Exception;)V
    .registers 3

    .line 1404
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$3;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1407
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$13$3;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass14 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$14)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

.field final synthetic f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V
    .registers 7

    .line 1502
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1505
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1508
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1511
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1512
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_36

    .line 1515
    :cond_2b
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->d:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;

    move-result-object v1

    const/4 v2, 0x0

    .line 1518
    :goto_36
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;->b()Ljava/lang/String;

    move-result-object v3

    .line 1519
    sget-object v4, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResponseType;->ERROR:Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResponseType;

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResponseType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    if-eqz v2, :cond_4e

    .line 1523
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$1;

    invoke-direct {v1, p0, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;Ljava/lang/String;)V

    goto :goto_63

    .line 1530
    :cond_4e
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$2;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;)V

    goto :goto_63

    .line 1520
    :cond_54
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string v2, "verification failed"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v1

    .line 1538
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$3;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1545
    :goto_63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass14.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$14$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;Ljava/lang/String;)V
    .registers 3

    .line 1523
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1526
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass14.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$14$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;)V
    .registers 2

    .line 1530
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1533
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass14.AnonymousClass3 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$14$3)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$3;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;Ljava/lang/Exception;)V
    .registers 3

    .line 1538
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$3;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1541
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$14$3;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass15 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$15)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V
    .registers 5

    .line 1654
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1657
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1660
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1661
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-static {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;

    move-result-object v1

    .line 1664
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 1667
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;->a()Ljava/util/List;

    move-result-object v1

    .line 1666
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    .line 1668
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    invoke-direct {v4, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 1669
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 1672
    :cond_45
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$1;

    invoke-direct {v1, p0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;Ljava/util/List;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4a} :catch_4b

    goto :goto_52

    :catch_4b
    move-exception v1

    .line 1680
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1687
    :goto_52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass15.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$15$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;Ljava/util/List;)V
    .registers 3

    .line 1672
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1676
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;->a(Ljava/util/List;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass15.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$15$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;Ljava/lang/Exception;)V
    .registers 3

    .line 1680
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1683
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$15$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass16 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$16)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 5

    .line 1762
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1765
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1768
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1769
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->b:Ljava/util/List;

    invoke-static {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 1770
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22

    goto :goto_29

    :catch_22
    move-exception v1

    .line 1777
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1784
    :goto_29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass16.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$16$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;)V
    .registers 2

    .line 1770
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1773
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass16.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$16$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;Ljava/lang/Exception;)V
    .registers 3

    .line 1777
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1780
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$16$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass17 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$17)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    .line 1870
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1873
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1876
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1877
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 1878
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_20

    goto :goto_27

    :catch_20
    move-exception v1

    .line 1886
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1893
    :goto_27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass17.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$17$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;)V
    .registers 2

    .line 1878
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1881
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e()V

    .line 1882
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass17.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$17$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;Ljava/lang/Exception;)V
    .registers 3

    .line 1886
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1889
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$17$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass18 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$18)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    .line 1954
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1957
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1960
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 1961
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 1962
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_20

    goto :goto_27

    :catch_20
    move-exception v1

    .line 1969
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1976
    :goto_27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass18.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$18$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;)V
    .registers 2

    .line 1962
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1965
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass18.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$18$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;Ljava/lang/Exception;)V
    .registers 3

    .line 1969
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1972
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$18$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass19 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$19)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 5

    .line 2040
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2043
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2046
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 2047
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v1

    .line 2054
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 2061
    :goto_25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass19.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$19$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;)V
    .registers 2

    .line 2047
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2050
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass19.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$19$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;Ljava/lang/Exception;)V
    .registers 3

    .line 2054
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2057
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$19$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .registers 3

    .line 364
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 367
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 370
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    move-result-object v1

    .line 371
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v1

    .line 379
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;Ljava/lang/Exception;)V

    .line 386
    :goto_21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass2.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$2$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;)V
    .registers 3

    .line 371
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    .line 375
    invoke-virtual {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 374
    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass2.RunnableC00212 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$2$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;Ljava/lang/Exception;)V
    .registers 3

    .line 379
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass20 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$20)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 5

    .line 2127
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2130
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2133
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/List;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 2134
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v1

    .line 2141
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 2148
    :goto_25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass20.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$20$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;)V
    .registers 2

    .line 2134
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2137
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass20.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$20$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;Ljava/lang/Exception;)V
    .registers 3

    .line 2141
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2144
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$20$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass21 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$21)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Z

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 5

    .line 2361
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-boolean p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->b:Z

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2364
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2365
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->b:Z

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2366
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2367
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a()Ljava/lang/String;

    move-result-object v2

    .line 2366
    invoke-interface {v1, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass22 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$22)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;)V
    .registers 4

    .line 2371
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2374
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass23 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$23)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V
    .registers 4

    .line 2379
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2382
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass24 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$24)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic c:Z

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V
    .registers 5

    .line 2402
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-boolean p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2405
    new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2406
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;-><init>(Ljava/lang/String;)V

    .line 2407
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    invoke-static {v0, v1, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    move-result-object v0

    .line 2410
    :try_start_17
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object v1

    .line 2411
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    move-result-object v0

    .line 2412
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)V

    const-string v1, "PASSWORD_VERIFIER"

    .line 2414
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2415
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 2419
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2420
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 2421
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/lang/String;

    move-result-object v3

    .line 2422
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v4

    .line 2423
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v6

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    .line 2419
    invoke-static/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    move-result-object v0

    .line 2426
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_ce

    .line 2416
    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2428
    :cond_71
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-boolean v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Z

    invoke-static {v1, v0, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_80
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException; {:try_start_17 .. :try_end_80} :catch_88
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_80} :catch_81

    goto :goto_ce

    :catch_81
    move-exception v0

    .line 2443
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    goto :goto_ce

    :catch_88
    move-exception v0

    .line 2431
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2432
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Device"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 2433
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2434
    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v3

    .line 2433
    invoke-static {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2435
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2436
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Z

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2437
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 2438
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a()Ljava/lang/String;

    move-result-object v1

    .line 2437
    invoke-interface {v2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    goto :goto_ce

    .line 2440
    :cond_c9
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    :goto_ce
    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass25 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$25)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic c:Z

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V
    .registers 5

    .line 2462
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-boolean p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2466
    :try_start_0
    new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;-><init>(Ljava/lang/String;)V

    .line 2467
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    invoke-static {v0, v1, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    move-result-object v0

    .line 2470
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object v1

    .line 2471
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    move-result-object v0

    .line 2472
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)V

    const-string v1, "PASSWORD_VERIFIER"

    .line 2474
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2475
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 2479
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2480
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 2481
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/lang/String;

    move-result-object v3

    .line 2482
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v4

    .line 2483
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v6

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    .line 2479
    invoke-static/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    move-result-object v0

    .line 2486
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->c:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_83

    .line 2476
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2488
    :cond_6d
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-boolean v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->c:Z

    invoke-static {v1, v0, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_83

    :catch_7d
    move-exception v0

    .line 2491
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    :goto_83
    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass26 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$26)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 3

    .line 2525
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2528
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string v2, "Authentication failed due to an internal error"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass27 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$27)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 4

    .line 2546
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2549
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass28 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$28)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .registers 5

    .line 2559
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2562
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass29 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$29)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 4

    .line 2566
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2569
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass3 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$3)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .registers 4

    .line 458
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 461
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 464
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    move-result-object v1

    .line 465
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 468
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    .line 470
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;

    invoke-direct {v1, p0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_2e

    goto :goto_35

    :catch_2e
    move-exception v1

    .line 477
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 484
    :goto_35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass3.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$3$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V
    .registers 3

    .line 470
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass3.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$3$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;Ljava/lang/Exception;)V
    .registers 3

    .line 477
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass30 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$30)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 3

    .line 2575
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2578
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string v2, "Authentication failed due to an internal error: PASSWORD_VERIFIER challenge encountered not at the start of authentication flow"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass31 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$31)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .registers 4

    .line 2588
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2591
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass32 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$32)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;)V
    .registers 4

    .line 2597
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2600
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass33 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$33)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;)V
    .registers 4

    .line 2606
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2609
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass34 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$34)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;)V
    .registers 4

    .line 2618
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2621
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass35 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$35)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .registers 4

    .line 2628
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2631
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass36 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$36)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V
    .registers 4

    .line 2664
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2667
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass37 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$37)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic c:Z

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V
    .registers 5

    .line 2685
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-boolean p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2689
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    move-result-object v0

    .line 2691
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object v1

    .line 2692
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    move-result-object v0

    .line 2693
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "USER_ID_FOR_SRP"

    .line 2694
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2693
    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;)Ljava/lang/String;

    .line 2695
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-boolean v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->c:Z

    invoke-static {v1, v0, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v0

    .line 2697
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    :goto_39
    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass38 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$38)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Z

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 5

    .line 2779
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-boolean p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->b:Z

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2782
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2783
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->b:Z

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2784
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2785
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a()Ljava/lang/String;

    move-result-object v2

    .line 2784
    invoke-interface {v1, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass39 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$39)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V
    .registers 4

    .line 2789
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2792
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass4 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$4)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .registers 5

    .line 568
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 571
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 574
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v1

    .line 582
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 589
    :goto_25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass4.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$4$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass4.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$4$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;Ljava/lang/Exception;)V
    .registers 3

    .line 582
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 585
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$4$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass40 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$40)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(ILjava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ILjava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;)V
    .registers 6

    .line 3128
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->b:I

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 3131
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3134
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 3135
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->b:I

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->c:Ljava/lang/String;

    .line 3134
    invoke-static {v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;ILjava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;

    move-result-object v1

    .line 3136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3137
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;

    .line 3138
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 3140
    :cond_49
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$1;

    invoke-direct {v1, p0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;Ljava/util/List;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4e} :catch_4f

    goto :goto_56

    :catch_4f
    move-exception v1

    .line 3148
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 3155
    :goto_56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass40.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$40$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;Ljava/util/List;)V
    .registers 3

    .line 3140
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 3143
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;->a(Ljava/util/List;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass40.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$40$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;Ljava/lang/Exception;)V
    .registers 3

    .line 3148
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 3151
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$40$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/DevicesHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass5 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$5)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)V
    .registers 4

    .line 677
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 680
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 683
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 684
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;)V
    :try_end_19
    .catch Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException; {:try_start_f .. :try_end_19} :catch_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_27

    :catch_1a
    move-exception v1

    .line 702
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;Ljava/lang/Exception;)V

    move-object v1, v2

    goto :goto_27

    .line 691
    :catch_22
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;)V

    .line 709
    :goto_27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass5.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$5$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;)V
    .registers 2

    .line 684
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 687
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass5.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$5$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 694
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 695
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 697
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 698
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-interface {v1, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass5.AnonymousClass3 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$5$3)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;Ljava/lang/Exception;)V
    .registers 3

    .line 702
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass6 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$6)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 4

    .line 775
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-boolean p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .registers 5

    .line 778
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    if-eqz v0, :cond_16

    .line 779
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 786
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    :goto_1b
    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .registers 5

    .line 792
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    if-eqz v0, :cond_16

    .line 793
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 800
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .registers 4

    .line 820
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    if-eqz v0, :cond_16

    .line 821
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 828
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    :goto_1b
    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .registers 4

    .line 806
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    if-eqz v0, :cond_16

    .line 807
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 814
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    :goto_1b
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .line 834
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    if-eqz v0, :cond_16

    .line 835
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 842
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass6.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$6$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .registers 4

    .line 779
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 782
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass6.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$6$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .registers 4

    .line 793
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 796
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass6.AnonymousClass3 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$6$3)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .registers 3

    .line 807
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 810
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass6.AnonymousClass4 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$6$4)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .registers 3

    .line 821
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass6.AnonymousClass5 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$6$5)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Ljava/lang/Exception;)V
    .registers 3

    .line 835
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 838
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass7 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$7)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/Runnable;)V
    .registers 3

    .line 848
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 851
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 856
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass7.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$7$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;)V
    .registers 2

    .line 851
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass8 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$8)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)V
    .registers 4

    .line 876
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 879
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported authentication type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 881
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 879
    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass9 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$9)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 6

    .line 983
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 986
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 989
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v1

    .line 990
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 991
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    goto :goto_2b

    :catch_24
    move-exception v1

    .line 998
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1005
    :goto_2b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass9.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$9$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;)V
    .registers 2

    .line 991
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 994
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AnonymousClass9.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$9$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;Ljava/lang/Exception;)V
    .registers 3

    .line 998
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1001
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$9$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AuthenticationHelper (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$AuthenticationHelper)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;
.super Ljava/lang/Object;
.source "CognitoUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationHelper"
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

.field private static final e:Ljava/math/BigInteger;

.field private static final f:Ljava/math/BigInteger;

.field private static final g:Ljava/math/BigInteger;

.field private static final h:I = 0x400

.field private static final i:I = 0x10

.field private static final j:Ljava/lang/String; = "Caldera Derived Key"

.field private static final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/security/SecureRandom;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3391
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 3392
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->f:Ljava/math/BigInteger;

    .line 3399
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper$1;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper$1;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->k:Ljava/lang/ThreadLocal;

    :try_start_1a
    const-string v0, "SHA1PRNG"

    .line 3414
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->l:Ljava/security/SecureRandom;

    .line 3416
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 3417
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 3418
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 3419
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->f:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 3420
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->g:Ljava/math/BigInteger;
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    .line 3422
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 3354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3356
    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x400

    sget-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->l:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a:Ljava/math/BigInteger;

    .line 3357
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->f:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a:Ljava/math/BigInteger;

    sget-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    .line 3358
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "_"

    .line 3360
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "_"

    const/4 v1, 0x2

    .line 3361
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c:Ljava/lang/String;

    goto :goto_47

    .line 3363
    :cond_45
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c:Ljava/lang/String;

    :goto_47
    return-void
.end method

.method static synthetic c()Ljava/math/BigInteger;
    .registers 1

    .line 3349
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .registers 2

    .line 3368
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 10

    .line 3432
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 3433
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 3434
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 3435
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 3436
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    .line 3441
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 3442
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c:Ljava/lang/String;

    sget-object v4, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 3443
    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-string p1, ":"

    .line 3444
    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 3445
    sget-object p1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 3447
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 3448
    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 3449
    new-instance p2, Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {p2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 3450
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->g:Ljava/math/BigInteger;

    sget-object p4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->f:Ljava/math/BigInteger;

    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    invoke-virtual {p4, p2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a:Ljava/math/BigInteger;

    .line 3451
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    sget-object p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, p2, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :try_start_91
    const-string p2, "HmacSHA256"

    .line 3455
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;

    move-result-object p2
    :try_end_97
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_91 .. :try_end_97} :catch_ab

    .line 3459
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a([B[B)V

    const-string p1, "Caldera Derived Key"

    const/16 p3, 0x10

    .line 3460
    invoke-virtual {p2, p1, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :catch_ab
    move-exception p1

    .line 3457
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 3437
    :cond_b6
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p2, "Hash of A and B cannot be zero"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/math/BigInteger;
    .registers 2

    .line 3372
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    return-object v0
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AuthenticationHelper.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser$AuthenticationHelper$1)
.class final Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper$1;
.super Ljava/lang/ThreadLocal;
.source "CognitoUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/security/MessageDigest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3399
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/security/MessageDigest;
    .registers 4

    :try_start_0
    const-string v0, "SHA-256"

    .line 3403
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 3405
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string v2, "Exception in authentication"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 3399
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper$1;->a()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

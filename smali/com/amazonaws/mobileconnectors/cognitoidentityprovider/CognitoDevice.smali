###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;
.super Ljava/lang/Object;
.source "CognitoDevice.java"


# static fields
.field private static final a:Ljava/lang/String; = "device_name"

.field private static final b:Ljava/lang/String; = "remembered"

.field private static final c:Ljava/lang/String; = "not_remembered"


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

.field private final f:Ljava/util/Date;

.field private g:Ljava/util/Date;

.field private h:Ljava/util/Date;

.field private final i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V
    .registers 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    .line 113
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->c()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->f:Ljava/util/Date;

    .line 114
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->d()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->g:Ljava/util/Date;

    .line 115
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->d()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->h:Ljava/util/Date;

    .line 116
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 117
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->j:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V
    .registers 8

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    .line 96
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->f:Ljava/util/Date;

    .line 97
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->g:Ljava/util/Date;

    .line 98
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->h:Ljava/util/Date;

    .line 99
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 100
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Landroid/content/Context;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;
    .registers 4

    if-eqz p1, :cond_37

    .line 469
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 470
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 471
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;-><init>()V

    .line 472
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;->a(Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;->c(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;->e(Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c()Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;

    move-result-object p1

    return-object p1

    .line 477
    :cond_2f
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "Device key is invalid"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_37
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "User is not authorized"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)V

    return-void
.end method

.method private a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 3

    if-eqz p1, :cond_33

    .line 426
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 427
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 428
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;-><init>()V

    .line 429
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;->a(Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;->c(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c()Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;)V

    return-void

    .line 433
    :cond_2b
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "Device key is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_33
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "User is not authorized"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)V
    .registers 4

    if-eqz p1, :cond_2e

    .line 493
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 496
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    .line 497
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->d()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->g:Ljava/util/Date;

    .line 498
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->d()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->h:Ljava/util/Date;

    return-void

    .line 494
    :cond_26
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string v0, "Service error, this object was not updated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_2e
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string v0, "Service returned null object, this object was not updated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    return-object p0
.end method

.method private b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;
    .registers 3

    if-eqz p1, :cond_34

    .line 447
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 448
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 449
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;-><init>()V

    .line 450
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;->c(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;->a(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c()Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;

    move-result-object p1

    return-object p1

    .line 454
    :cond_2c
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "Device key is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_34
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "User is not authorized"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 198
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    return-object v0
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    if-eqz p1, :cond_1c

    .line 244
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)V

    .line 246
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 248
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_1b
    return-void

    .line 240
    :cond_1c
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "device_name"

    .line 159
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 259
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->f:Ljava/util/Date;

    return-object v0
.end method

.method public d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 301
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 302
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    .line 304
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_13
    return-void

    .line 298
    :cond_14
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Ljava/util/Date;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->g:Ljava/util/Date;

    return-object v0
.end method

.method public e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 317
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 340
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 315
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->h:Ljava/util/Date;

    return-object v0
.end method

.method public f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 358
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    const-string v1, "remembered"

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 360
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void

    .line 354
    :cond_13
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 374
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 371
    :cond_10
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 414
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->i:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    const-string v1, "not_remembered"

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 416
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void

    .line 411
    :cond_13
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    .line 200
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 203
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 206
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)V

    .line 208
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_2e

    goto :goto_35

    :catch_2e
    move-exception v1

    .line 215
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 222
    :goto_35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass1.RunnableC00181 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$1$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$1;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass1.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$1$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$2;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;Ljava/lang/Exception;)V
    .registers 3

    .line 215
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$1$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    .line 261
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 264
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 267
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 268
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    goto :goto_2b

    :catch_24
    move-exception v1

    .line 275
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 282
    :goto_2b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass2.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$2$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$1;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass2.RunnableC00192 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$2$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$2;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;Ljava/lang/Exception;)V
    .registers 3

    .line 275
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$2$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass3 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$3)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    .line 317
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 320
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 323
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v2

    const-string v3, "remembered"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;

    .line 324
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_26

    goto :goto_2d

    :catch_26
    move-exception v1

    .line 331
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 338
    :goto_2d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass3.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$3$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$1;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass3.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$3$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$2;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;Ljava/lang/Exception;)V
    .registers 3

    .line 331
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$3$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass4 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$4)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .registers 3

    .line 374
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 377
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 380
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v2

    const-string v3, "not_remembered"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;

    .line 381
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_26

    goto :goto_2d

    :catch_26
    move-exception v1

    .line 388
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$2;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 395
    :goto_2d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass4.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$4$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$1;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.AnonymousClass4.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice$4$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$2;
.super Ljava/lang/Object;
.source "CognitoDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;Ljava/lang/Exception;)V
    .registers 3

    .line 388
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice$4$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

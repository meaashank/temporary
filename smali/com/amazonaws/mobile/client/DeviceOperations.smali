###### Class com.amazonaws.mobile.client.DeviceOperations (com.amazonaws.mobile.client.DeviceOperations)
.class public Lcom/amazonaws/mobile/client/DeviceOperations;
.super Ljava/lang/Object;
.source "DeviceOperations.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/AWSMobileClient;

.field private final b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 28
    iput-object p2, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/mobile/client/AWSMobileClient;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/DeviceOperations;Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)Lcom/amazonaws/mobile/client/results/Device;
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)Lcom/amazonaws/mobile/client/results/Device;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)Lcom/amazonaws/mobile/client/results/Device;
    .registers 9

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 150
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 152
    :cond_25
    new-instance v6, Lcom/amazonaws/mobile/client/results/Device;

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->a()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->c()Ljava/util/Date;

    move-result-object v3

    .line 154
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->d()Ljava/util/Date;

    move-result-object v4

    .line 155
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->e()Ljava/util/Date;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/results/Device;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-object v6
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->e(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/Integer;Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
            "Lcom/amazonaws/mobile/client/results/ListDevicesResult;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/amazonaws/mobile/client/DeviceOperations$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/mobile/client/DeviceOperations$2;-><init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Z)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/amazonaws/mobile/client/DeviceOperations$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/mobile/client/DeviceOperations$3;-><init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
            "Lcom/amazonaws/mobile/client/results/Device;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/amazonaws/mobile/client/DeviceOperations$1;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations$1;-><init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/amazonaws/mobile/client/DeviceOperations$4;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations$4;-><init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;
    .registers 11

    .line 277
    new-instance v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    if-eqz p1, :cond_6

    :goto_4
    move-object v1, p1

    goto :goto_17

    :cond_6
    iget-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 278
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :goto_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 283
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v6

    iget-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v7, p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V

    return-object v8
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/results/Device;
    .registers 2

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/DeviceOperations;->c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobile/client/results/Device;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/Device;
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/Device;

    return-object p1
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/ListDevicesResult;
    .registers 3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/Integer;Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/ListDevicesResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/Device;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/DeviceOperations;->c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/ListDevicesResult;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/Integer;Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/Device;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/String;Z)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/String;Z)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/String;Z)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    return-void
.end method

.method public a(ZLcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/String;Z)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public b()Lcom/amazonaws/mobile/client/results/ListDevicesResult;
    .registers 3

    const/16 v0, 0x3c

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/Integer;Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobile/client/results/ListDevicesResult;

    return-object v0
.end method

.method public b(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/ListDevicesResult;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x3c

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/Integer;Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 239
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->d(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/DeviceOperations;->d(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/DeviceOperations;->d(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/DeviceOperations;->d(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.DeviceOperations.AnonymousClass1 (com.amazonaws.mobile.client.DeviceOperations$1)
.class Lcom/amazonaws/mobile/client/DeviceOperations$1;
.super Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.source "DeviceOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/DeviceOperations;->c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
        "Lcom/amazonaws/mobile/client/results/Device;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amazonaws/mobile/client/DeviceOperations;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$1;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/results/Device;
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobile/client/DeviceOperations$1;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$1;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    invoke-static {v2}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/mobile/client/AWSMobileClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->y()Lcom/amazonaws/mobile/client/results/Tokens;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/Tokens;->a()Lcom/amazonaws/mobile/client/results/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;->c(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobile/client/DeviceOperations$1;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$1;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)Lcom/amazonaws/mobile/client/results/Device;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/DeviceOperations$1;->a()Lcom/amazonaws/mobile/client/results/Device;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.DeviceOperations.AnonymousClass2 (com.amazonaws.mobile.client.DeviceOperations$2)
.class Lcom/amazonaws/mobile/client/DeviceOperations$2;
.super Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.source "DeviceOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/Integer;Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
        "Lcom/amazonaws/mobile/client/results/ListDevicesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobile/client/DeviceOperations;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4

    .line 129
    iput-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/results/ListDevicesResult;
    .registers 6

    .line 132
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/mobile/client/AWSMobileClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->y()Lcom/amazonaws/mobile/client/results/Tokens;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/results/Tokens;->a()Lcom/amazonaws/mobile/client/results/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;->a(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;->a(Ljava/lang/Integer;)V

    .line 135
    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;->c(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    .line 137
    invoke-static {v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;

    .line 140
    iget-object v4, p0, Lcom/amazonaws/mobile/client/DeviceOperations$2;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    invoke-static {v4, v3}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;)Lcom/amazonaws/mobile/client/results/Device;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 142
    :cond_57
    new-instance v2, Lcom/amazonaws/mobile/client/results/ListDevicesResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/mobile/client/results/ListDevicesResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 129
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/DeviceOperations$2;->a()Lcom/amazonaws/mobile/client/results/ListDevicesResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.DeviceOperations.AnonymousClass3 (com.amazonaws.mobile.client.DeviceOperations$3)
.class Lcom/amazonaws/mobile/client/DeviceOperations$3;
.super Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.source "DeviceOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/DeviceOperations;->b(Ljava/lang/String;Z)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/amazonaws/mobile/client/DeviceOperations;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;Z)V
    .registers 4

    .line 194
    iput-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->b:Z

    invoke-direct {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    .line 201
    invoke-static {v2}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/mobile/client/AWSMobileClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->y()Lcom/amazonaws/mobile/client/results/Tokens;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/Tokens;->a()Lcom/amazonaws/mobile/client/results/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->b:Z

    if-eqz v1, :cond_32

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceRememberedStatusType;->Remembered:Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceRememberedStatusType;

    goto :goto_34

    :cond_32
    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceRememberedStatusType;->Not_remembered:Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceRememberedStatusType;

    .line 203
    :goto_34
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceRememberedStatusType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$3;->c:Lcom/amazonaws/mobile/client/DeviceOperations;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/DeviceOperations$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.DeviceOperations.AnonymousClass4 (com.amazonaws.mobile.client.DeviceOperations$4)
.class Lcom/amazonaws/mobile/client/DeviceOperations$4;
.super Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.source "DeviceOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/DeviceOperations;->d(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amazonaws/mobile/client/DeviceOperations;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)V
    .registers 3

    .line 254
    iput-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$4;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/amazonaws/mobile/client/DeviceOperations$4;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/mobile/client/DeviceOperations$4;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    .line 260
    invoke-static {v2}, Lcom/amazonaws/mobile/client/DeviceOperations;->a(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/mobile/client/AWSMobileClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->y()Lcom/amazonaws/mobile/client/results/Tokens;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/Tokens;->a()Lcom/amazonaws/mobile/client/results/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;

    move-result-object v1

    .line 261
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/amazonaws/mobile/client/DeviceOperations$4;->b:Lcom/amazonaws/mobile/client/DeviceOperations;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/DeviceOperations;->b(Lcom/amazonaws/mobile/client/DeviceOperations;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 254
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/DeviceOperations$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

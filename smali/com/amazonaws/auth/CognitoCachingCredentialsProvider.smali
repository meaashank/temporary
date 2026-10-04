###### Class com.amazonaws.auth.CognitoCachingCredentialsProvider (com.amazonaws.auth.CognitoCachingCredentialsProvider)
.class public Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
.super Lcom/amazonaws/auth/CognitoCredentialsProvider;
.source "CognitoCachingCredentialsProvider.java"


# static fields
.field private static final p:Ljava/lang/String;

.field private static final r:Ljava/lang/String; = "identityId"

.field private static final s:Ljava/lang/String; = "accessKey"

.field private static final t:Ljava/lang/String; = "secretKey"

.field private static final u:Ljava/lang/String; = "sessionToken"

.field private static final v:Ljava/lang/String; = "expirationDate"

.field private static final x:Ljava/lang/String; = "CognitoCachingCredentialsProvider"


# instance fields
.field volatile a:Z

.field private final o:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private w:Z

.field private y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field private final z:Lcom/amazonaws/auth/IdentityChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    .registers 4

    .line 379
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_1a

    .line 383
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 381
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .registers 5

    .line 413
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_1a

    .line 417
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 415
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 321
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_1a

    .line 325
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 323
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .registers 6

    .line 347
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_1a

    .line 351
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 349
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .registers 3

    .line 226
    invoke-direct {p0, p2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_1a

    .line 230
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 228
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .registers 4

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_1a

    .line 190
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 188
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .registers 5

    .line 260
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_1a

    .line 264
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 262
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_20

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 129
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .registers 15

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 159
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_21

    .line 163
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 161
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .registers 15

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 296
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 100
    new-instance p2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    if-eqz p1, :cond_21

    .line 300
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Landroid/content/Context;)V

    return-void

    .line 298
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 425
    :try_start_0
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "com.amazonaws.android.auth"

    iget-boolean v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 428
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->u()V

    .line 429
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->t()V

    .line 431
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->z:Lcom/amazonaws/auth/IdentityChangedListener;

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Lcom/amazonaws/auth/IdentityChangedListener;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in initializing the CognitoCachingCredentialsProvider. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CognitoCachingCredentialsProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error in initializing the CognitoCachingCredentialsProvider. "

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Lcom/amazonaws/auth/AWSSessionCredentials;J)V
    .registers 7

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Saving credentials to SharedPreferences"

    .line 624
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_45

    .line 626
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "accessKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "secretKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "sessionToken"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v0, "expirationDate"

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Saving identity id to SharedPreferences"

    .line 641
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 644
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "identityId"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private t()V
    .registers 6

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Loading credentials from SharedPreferences"

    .line 586
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "expirationDate"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 589
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v2, "expirationDate"

    .line 590
    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    goto :goto_36

    .line 592
    :cond_2d
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    .line 596
    :goto_36
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "accessKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result v0

    .line 597
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v2, "secretKey"

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result v1

    .line 598
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v3, "sessionToken"

    invoke-direct {p0, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_9f

    if-eqz v1, :cond_9f

    if-nez v2, :cond_62

    goto :goto_9f

    .line 605
    :cond_62
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "accessKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v2, "secretKey"

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v4, "sessionToken"

    invoke-direct {p0, v4}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_95

    if-eqz v1, :cond_95

    if-nez v2, :cond_8d

    goto :goto_95

    .line 616
    :cond_8d
    new-instance v3, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-direct {v3, v0, v1, v2}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-void

    :cond_95
    :goto_95
    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "No valid credentials found in SharedPreferences"

    .line 611
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iput-object v3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    return-void

    :cond_9f
    :goto_9f
    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "No valid credentials found in SharedPreferences"

    .line 600
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iput-object v3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    return-void
.end method

.method private u()V
    .registers 4

    .line 659
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "identityId"

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Identity id without namespace is detected. It will be saved under new namespace."

    .line 660
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "identityId"

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a()V

    .line 665
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v2, "identityId"

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
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

    .line 524
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 526
    :try_start_9
    invoke-super {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    .line 530
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->f()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1c

    .line 532
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_1c
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 533
    throw p1
.end method

.method public a(Z)V
    .registers 3

    .line 682
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w:Z

    .line 683
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Z)V

    return-void
.end method

.method public b()V
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 510
    :try_start_9
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->b()V

    .line 513
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    if-eqz v0, :cond_1b

    .line 514
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    .line 515
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 514
    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Lcom/amazonaws/auth/AWSSessionCredentials;J)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_25

    .line 518
    :cond_1b
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_25
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 519
    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 450
    iget-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a:Z

    .line 452
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()V

    .line 453
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c(Ljava/lang/String;)V

    .line 458
    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 460
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c(Ljava/lang/String;)V

    .line 463
    :cond_2a
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/amazonaws/auth/AWSSessionCredentials;
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 471
    :try_start_9
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    if-nez v0, :cond_10

    .line 472
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->t()V

    .line 475
    :cond_10
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->s()Z

    move-result v0

    if-nez v0, :cond_26

    .line 476
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_1c
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_9 .. :try_end_1c} :catch_4d
    .catchall {:try_start_9 .. :try_end_1c} :catchall_4b

    .line 502
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :cond_26
    :try_start_26
    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Making a network call to fetch credentials."

    .line 480
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 484
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    if-eqz v0, :cond_3f

    .line 485
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e:Ljava/util/Date;

    .line 486
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 485
    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Lcom/amazonaws/auth/AWSSessionCredentials;J)V

    .line 488
    :cond_3f
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_41
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_26 .. :try_end_41} :catch_4d
    .catchall {:try_start_26 .. :try_end_41} :catchall_4b

    .line 502
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_4b
    move-exception v0

    goto :goto_6f

    :catch_4d
    move-exception v0

    :try_start_4e
    const-string v1, "CognitoCachingCredentialsProvider"

    const-string v2, "Failure to get credentials"

    .line 490
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6e

    const/4 v0, 0x0

    .line 494
    invoke-super {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/lang/String;)V

    .line 495
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 496
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_4b

    .line 502
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 499
    :cond_6e
    :try_start_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_4b

    .line 502
    :goto_6f
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 503
    throw v0
.end method

.method public e()V
    .registers 2

    .line 543
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e()V

    .line 546
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a()V

    return-void
.end method

.method public f()V
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 558
    :try_start_9
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f()V

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Clearing credentials from SharedPreferences"

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "accessKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "secretKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "sessionToken"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "expirationDate"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_49

    .line 565
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_49
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 566
    throw v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .line 575
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->y:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "identityId"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 576
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->q:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 577
    invoke-super {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/lang/String;)V

    :cond_15
    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    .line 649
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.auth.CognitoCachingCredentialsProvider.AnonymousClass1 (com.amazonaws.auth.CognitoCachingCredentialsProvider$1)
.class Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;
.super Ljava/lang/Object;
.source "CognitoCachingCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/IdentityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p1, "CognitoCachingCredentialsProvider"

    const-string v0, "Identity id is changed"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-static {p1, p2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->f()V

    return-void
.end method

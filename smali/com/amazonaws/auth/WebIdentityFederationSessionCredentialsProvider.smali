###### Class com.amazonaws.auth.WebIdentityFederationSessionCredentialsProvider (com.amazonaws.auth.WebIdentityFederationSessionCredentialsProvider)
.class public Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;
.super Ljava/lang/Object;
.source "WebIdentityFederationSessionCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field public static final a:I = 0xe10

.field public static final b:I = 0x1f4


# instance fields
.field private final c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

.field private d:Lcom/amazonaws/auth/AWSSessionCredentials;

.field private e:Ljava/util/Date;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 69
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    .registers 7

    .line 87
    new-instance v0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p4}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p4, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 107
    iput-object p2, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->g:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->f:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->h:Ljava/lang/String;

    const/16 p1, 0xe10

    .line 110
    iput p1, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->i:I

    const/16 p1, 0x1f4

    .line 111
    iput p1, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->j:I

    return-void
.end method

.method private f()V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->f:Ljava/lang/String;

    .line 229
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->g:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->h(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->h:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    const-string v2, "ProviderSession"

    .line 232
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->i:I

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->b(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    .line 228
    invoke-interface {v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->k:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/amazonaws/auth/BasicSessionCredentials;

    .line 239
    invoke-virtual {v1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->b()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 242
    invoke-virtual {v1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->d()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->e:Ljava/util/Date;

    return-void
.end method

.method private g()Z
    .registers 7

    .line 253
    iget-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 257
    iget v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->j:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method


# virtual methods
.method public a()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 117
    invoke-direct {p0}, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->f()V

    .line 119
    :cond_9
    iget-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 136
    iput p1, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->i:I

    return-void
.end method

.method public b(I)Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;
    .registers 2

    .line 151
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->a(I)V

    return-object p0
.end method

.method public b()V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->f()V

    return-void
.end method

.method public c()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->i:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .line 176
    iput p1, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->j:I

    return-void
.end method

.method public d()I
    .registers 2

    .line 206
    iget v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->j:I

    return v0
.end method

.method public d(I)Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;
    .registers 2

    .line 192
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->c(I)V

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;->k:Ljava/lang/String;

    return-object v0
.end method

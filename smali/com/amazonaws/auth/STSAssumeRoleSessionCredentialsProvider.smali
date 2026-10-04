###### Class com.amazonaws.auth.STSAssumeRoleSessionCredentialsProvider (com.amazonaws.auth.STSAssumeRoleSessionCredentialsProvider)
.class public Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;
.super Ljava/lang/Object;
.source "STSAssumeRoleSessionCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field public static final a:I = 0x384

.field private static final b:I = 0xea60


# instance fields
.field private final c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

.field private d:Lcom/amazonaws/auth/AWSSessionCredentials;

.field private e:Ljava/util/Date;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 86
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    .registers 5

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->f:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->g:Ljava/lang/String;

    .line 107
    new-instance p2, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p2, p1, p4}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->f:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->g:Ljava/lang/String;

    .line 129
    new-instance p2, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p2, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    iput-object p2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    .registers 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->f:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->g:Ljava/lang/String;

    .line 151
    new-instance p2, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p2, p1, p4}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->f:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->g:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method private c()V
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->f:Ljava/lang/String;

    .line 196
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    move-result-object v1

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->b(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->g:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    move-result-object v1

    .line 195
    invoke-interface {v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 202
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->d()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->e:Ljava/util/Date;

    return-void
.end method

.method private d()Z
    .registers 7

    .line 213
    iget-object v0, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method


# virtual methods
.method public a()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2

    .line 177
    invoke-direct {p0}, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    invoke-direct {p0}, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c()V

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-void
.end method

.method public b()V
    .registers 1

    .line 185
    invoke-direct {p0}, Lcom/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider;->c()V

    return-void
.end method

###### Class com.amazonaws.auth.STSSessionCredentials (com.amazonaws.auth.STSSessionCredentials)
.class public Lcom/amazonaws/auth/STSSessionCredentials;
.super Ljava/lang/Object;
.source "STSSessionCredentials.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSRefreshableSessionCredentials;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:I = 0xe10


# instance fields
.field private final b:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

.field private final c:I

.field private d:Lcom/amazonaws/services/securitytoken/model/Credentials;


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 3

    const/16 v0, 0xe10

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/STSSessionCredentials;-><init>(Lcom/amazonaws/auth/AWSCredentials;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;I)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentials;->b:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 70
    iput p2, p0, Lcom/amazonaws/auth/STSSessionCredentials;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .registers 3

    const/16 v0, 0xe10

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/STSSessionCredentials;-><init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;I)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/amazonaws/auth/STSSessionCredentials;->b:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 94
    iput p2, p0, Lcom/amazonaws/auth/STSSessionCredentials;->c:I

    return-void
.end method

.method private declared-synchronized f()Lcom/amazonaws/services/securitytoken/model/Credentials;
    .registers 2

    monitor-enter p0

    .line 161
    :try_start_1
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentials;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    invoke-virtual {p0}, Lcom/amazonaws/auth/STSSessionCredentials;->c()V

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentials;->d:Lcom/amazonaws/services/securitytoken/model/Credentials;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    .line 160
    monitor-exit p0

    throw v0
.end method

.method private g()Z
    .registers 7

    .line 167
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentials;->d:Lcom/amazonaws/services/securitytoken/model/Credentials;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentials;->d:Lcom/amazonaws/services/securitytoken/model/Credentials;

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->d()Ljava/util/Date;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 107
    :try_start_1
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentials;->f()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 120
    :try_start_1
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentials;->f()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentials;->b:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;-><init>()V

    iget v2, p0, Lcom/amazonaws/auth/STSSessionCredentials;->c:I

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->b(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    move-result-object v1

    .line 152
    invoke-interface {v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->a(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentials;->d:Lcom/amazonaws/services/securitytoken/model/Credentials;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 155
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    .line 150
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 133
    :try_start_1
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentials;->f()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/amazonaws/auth/AWSSessionCredentials;
    .registers 5

    monitor-enter p0

    .line 141
    :try_start_1
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentials;->f()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->b()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 142
    monitor-exit p0

    return-object v1

    :catchall_18
    move-exception v0

    .line 140
    monitor-exit p0

    throw v0
.end method

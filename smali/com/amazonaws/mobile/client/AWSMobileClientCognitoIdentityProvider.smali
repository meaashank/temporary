###### Class com.amazonaws.mobile.client.AWSMobileClientCognitoIdentityProvider (com.amazonaws.mobile.client.AWSMobileClientCognitoIdentityProvider)
.class Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;
.super Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;
.source "AWSMobileClient.java"


# instance fields
.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3471
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    .registers 6

    .line 3485
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p3}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V
    .registers 4

    .line 3500
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Cognito"

    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3517
    invoke-super {p0, p1}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->a(Ljava/lang/String;)V

    .line 3518
    invoke-super {p0, p2}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3519
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->f:Z

    return-void
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "AWSMobileClient"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 3537
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->f:Z

    if-eqz v0, :cond_7

    .line 3539
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->c:Ljava/lang/String;

    return-object v0

    .line 3541
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->b()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method k()V
    .registers 2

    const/4 v0, 0x0

    .line 3527
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->f:Z

    return-void
.end method

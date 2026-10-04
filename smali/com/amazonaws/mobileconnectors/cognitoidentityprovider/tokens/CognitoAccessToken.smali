###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoAccessToken (com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoAccessToken)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;
.super Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;
.source "CognitoAccessToken.java"


# static fields
.field private static final a:I = 0x3e8


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .registers 5

    .line 58
    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a_()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exp"

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoJWTParser;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 64
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v2

    :catch_1c
    move-exception v0

    .line 66
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 75
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a_()Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoJWTParser;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

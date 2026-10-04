###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoPasswordInvalidException (com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoPasswordInvalidException)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoPasswordInvalidException;
.super Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoIdentityProviderException;
.source "CognitoPasswordInvalidException.java"


# static fields
.field private static final serialVersionUID:J = 0x7a85fb447ca2fe79L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoIdentityProviderException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoIdentityProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

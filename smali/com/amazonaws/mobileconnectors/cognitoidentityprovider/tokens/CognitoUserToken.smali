###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoUserToken (com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoUserToken)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;
.super Ljava/lang/Object;
.source "CognitoUserToken.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a_()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    return-object v0
.end method

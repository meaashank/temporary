###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserDetails (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserDetails)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;
.super Ljava/lang/Object;
.source "CognitoUserDetails.java"


# instance fields
.field private a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

.field private b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    .line 31
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    return-object v0
.end method

.method public b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSettings;

    return-object v0
.end method

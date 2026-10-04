###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation (com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;
.super Ljava/lang/Object;
.source "ForgotPasswordContinuation.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation<",
        "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = false


# instance fields
.field private final c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

.field private final d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private final e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

.field private final f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .registers 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->g:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->h:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 60
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 61
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 62
    iput-boolean p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->f:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->g:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .registers 5

    .line 79
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->f:Z

    if-eqz v0, :cond_10

    .line 80
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    goto :goto_1b

    .line 82
    :cond_10
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    :goto_1b
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    move-result-object v0

    return-object v0
.end method

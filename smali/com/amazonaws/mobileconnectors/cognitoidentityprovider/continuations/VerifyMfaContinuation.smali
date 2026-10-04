###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.VerifyMfaContinuation (com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.VerifyMfaContinuation)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;
.super Ljava/lang/Object;
.source "VerifyMfaContinuation.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = false


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private final f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;Ljava/util/Map;ZLjava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Time-based One-time Password MFA"

    .line 42
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->l:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->c:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->d:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 67
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    .line 68
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->g:Ljava/util/Map;

    .line 69
    iput-boolean p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->h:Z

    .line 70
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->i:Ljava/lang/String;

    .line 71
    iput-boolean p8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->j:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->g:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 80
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 83
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->k:Ljava/lang/String;

    .line 84
    invoke-static {p2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 85
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->l:Ljava/lang/String;

    :cond_10
    return-void

    .line 81
    :cond_11
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "verification code is invalid"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 6

    .line 104
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 105
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->h:Z

    if-eqz v0, :cond_17

    .line 106
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V

    goto :goto_2e

    .line 108
    :cond_17
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V

    goto :goto_2e

    .line 111
    :cond_23
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/RegisterMfaHandler;)V

    :goto_2e
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/VerifyMfaContinuation;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

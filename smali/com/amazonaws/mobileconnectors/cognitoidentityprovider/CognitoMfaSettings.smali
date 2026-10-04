###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoMfaSettings (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoMfaSettings)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;
.super Ljava/lang/Object;
.source "CognitoMfaSettings.java"


# static fields
.field public static final a:Ljava/lang/String; = "SMS_MFA"

.field public static final b:Ljava/lang/String; = "TOTP_MFA"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->d:Z

    .line 35
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->d:Z

    .line 35
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->e:Z

    .line 49
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->d:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->d:Z

    return v0
.end method

.method public b(Z)V
    .registers 2

    .line 81
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->e:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoMfaSettings;->c:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.services.cognitoidentityprovider.model.ChallengeNameType (com.amazonaws.services.cognitoidentityprovider.model.ChallengeNameType)
.class public final enum Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;
.super Ljava/lang/Enum;
.source "ChallengeNameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum ADMIN_NO_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum CUSTOM_CHALLENGE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum DEVICE_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum MFA_SETUP:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum NEW_PASSWORD_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum SELECT_MFA_TYPE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum SMS_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field public static final enum SOFTWARE_TOKEN_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 26
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "SMS_MFA"

    const-string v2, "SMS_MFA"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SMS_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 27
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "SOFTWARE_TOKEN_MFA"

    const-string v2, "SOFTWARE_TOKEN_MFA"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SOFTWARE_TOKEN_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 28
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "SELECT_MFA_TYPE"

    const-string v2, "SELECT_MFA_TYPE"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SELECT_MFA_TYPE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 29
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "MFA_SETUP"

    const-string v2, "MFA_SETUP"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->MFA_SETUP:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 30
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "PASSWORD_VERIFIER"

    const-string v2, "PASSWORD_VERIFIER"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "CUSTOM_CHALLENGE"

    const-string v2, "CUSTOM_CHALLENGE"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->CUSTOM_CHALLENGE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 32
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "DEVICE_SRP_AUTH"

    const-string v2, "DEVICE_SRP_AUTH"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->DEVICE_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 33
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "DEVICE_PASSWORD_VERIFIER"

    const-string v2, "DEVICE_PASSWORD_VERIFIER"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 34
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "ADMIN_NO_SRP_AUTH"

    const-string v2, "ADMIN_NO_SRP_AUTH"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->ADMIN_NO_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 35
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const-string v1, "NEW_PASSWORD_REQUIRED"

    const-string v2, "NEW_PASSWORD_REQUIRED"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    const/16 v0, 0xa

    .line 24
    new-array v0, v0, [Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SMS_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SOFTWARE_TOKEN_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SELECT_MFA_TYPE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->MFA_SETUP:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->CUSTOM_CHALLENGE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->DEVICE_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->ADMIN_NO_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->$VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "SMS_MFA"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SMS_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "SOFTWARE_TOKEN_MFA"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SOFTWARE_TOKEN_MFA:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "SELECT_MFA_TYPE"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->SELECT_MFA_TYPE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "MFA_SETUP"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->MFA_SETUP:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "PASSWORD_VERIFIER"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "CUSTOM_CHALLENGE"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->CUSTOM_CHALLENGE:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "DEVICE_SRP_AUTH"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->DEVICE_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "DEVICE_PASSWORD_VERIFIER"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "ADMIN_NO_SRP_AUTH"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->ADMIN_NO_SRP_AUTH:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    const-string v1, "NEW_PASSWORD_REQUIRED"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;
    .registers 4

    if-eqz p0, :cond_35

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 72
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    return-object p0

    .line 75
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;
    .registers 2

    .line 24
    const-class v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;
    .registers 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->$VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->value:Ljava/lang/String;

    return-object v0
.end method

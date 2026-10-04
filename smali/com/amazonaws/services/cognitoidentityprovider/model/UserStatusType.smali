###### Class com.amazonaws.services.cognitoidentityprovider.model.UserStatusType (com.amazonaws.services.cognitoidentityprovider.model.UserStatusType)
.class public final enum Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;
.super Ljava/lang/Enum;
.source "UserStatusType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

.field public static final enum ARCHIVED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

.field public static final enum COMPROMISED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

.field public static final enum CONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

.field public static final enum FORCE_CHANGE_PASSWORD:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

.field public static final enum RESET_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

.field public static final enum UNCONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 26
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    const-string v1, "UNCONFIRMED"

    const-string v2, "UNCONFIRMED"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->UNCONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    .line 27
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    const-string v1, "CONFIRMED"

    const-string v2, "CONFIRMED"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->CONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    .line 28
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    const-string v1, "ARCHIVED"

    const-string v2, "ARCHIVED"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->ARCHIVED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    .line 29
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    const-string v1, "COMPROMISED"

    const-string v2, "COMPROMISED"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->COMPROMISED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    .line 30
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    const-string v1, "RESET_REQUIRED"

    const-string v2, "RESET_REQUIRED"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->RESET_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    const-string v1, "FORCE_CHANGE_PASSWORD"

    const-string v2, "FORCE_CHANGE_PASSWORD"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->FORCE_CHANGE_PASSWORD:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    const/4 v0, 0x6

    .line 24
    new-array v0, v0, [Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->UNCONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->CONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->ARCHIVED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->COMPROMISED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->RESET_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->FORCE_CHANGE_PASSWORD:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->$VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "UNCONFIRMED"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->UNCONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "CONFIRMED"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->CONFIRMED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "ARCHIVED"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->ARCHIVED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "COMPROMISED"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->COMPROMISED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "RESET_REQUIRED"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->RESET_REQUIRED:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "FORCE_CHANGE_PASSWORD"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->FORCE_CHANGE_PASSWORD:Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;
    .registers 4

    if-eqz p0, :cond_35

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 64
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 65
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    return-object p0

    .line 67
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

    .line 63
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;
    .registers 2

    .line 24
    const-class v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;
    .registers 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->$VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->value:Ljava/lang/String;

    return-object v0
.end method

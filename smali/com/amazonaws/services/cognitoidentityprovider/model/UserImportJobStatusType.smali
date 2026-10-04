###### Class com.amazonaws.services.cognitoidentityprovider.model.UserImportJobStatusType (com.amazonaws.services.cognitoidentityprovider.model.UserImportJobStatusType)
.class public final enum Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;
.super Ljava/lang/Enum;
.source "UserImportJobStatusType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum Created:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum Expired:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum Failed:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum InProgress:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum Pending:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum Stopped:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum Stopping:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field public static final enum Succeeded:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 26
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "Created"

    const-string v2, "Created"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Created:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 27
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "Pending"

    const-string v2, "Pending"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Pending:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 28
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "InProgress"

    const-string v2, "InProgress"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->InProgress:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 29
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "Stopping"

    const-string v2, "Stopping"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Stopping:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 30
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "Expired"

    const-string v2, "Expired"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Expired:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "Stopped"

    const-string v2, "Stopped"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Stopped:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 32
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "Failed"

    const-string v2, "Failed"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Failed:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 33
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const-string v1, "Succeeded"

    const-string v2, "Succeeded"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Succeeded:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    const/16 v0, 0x8

    .line 24
    new-array v0, v0, [Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Created:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Pending:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->InProgress:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Stopping:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Expired:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Stopped:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Failed:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Succeeded:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->$VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "Created"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Created:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "Pending"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Pending:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "InProgress"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->InProgress:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "Stopping"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Stopping:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "Expired"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Expired:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "Stopped"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Stopped:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "Failed"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Failed:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    const-string v1, "Succeeded"

    sget-object v2, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->Succeeded:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;
    .registers 4

    if-eqz p0, :cond_35

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 68
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 69
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    return-object p0

    .line 71
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

    .line 67
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;
    .registers 2

    .line 24
    const-class v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;
    .registers 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->$VALUES:[Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->value:Ljava/lang/String;

    return-object v0
.end method

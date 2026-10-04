###### Class com.amazonaws.services.cognitoidentityprovider.model.StopUserImportJobResult (com.amazonaws.services.cognitoidentityprovider.model.StopUserImportJobResult)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;
.super Ljava/lang/Object;
.source "StopUserImportJobResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;)Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 113
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;

    if-nez v2, :cond_d

    return v1

    .line 115
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v3

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 119
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 120
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 102
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->hashCode()I

    move-result v0

    :goto_10
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserImportJob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "}"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

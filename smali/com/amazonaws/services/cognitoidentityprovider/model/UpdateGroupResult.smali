###### Class com.amazonaws.services.cognitoidentityprovider.model.UpdateGroupResult (com.amazonaws.services.cognitoidentityprovider.model.UpdateGroupResult)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;
.super Ljava/lang/Object;
.source "UpdateGroupResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

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

    .line 106
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;

    if-nez v2, :cond_d

    return v1

    .line 108
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;

    .line 110
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

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

    .line 112
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->hashCode()I

    move-result v0

    :goto_10
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "}"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

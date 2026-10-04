###### Class com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolDomainRequest (com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolDomainRequest)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteUserPoolDomainRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->b:Ljava/lang/String;

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

    .line 200
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;

    if-nez v2, :cond_d

    return v1

    .line 202
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;

    .line 204
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

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

    .line 206
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 208
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    xor-int/2addr v2, v3

    if-eqz v2, :cond_50

    return v1

    .line 210
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 211
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    return v1

    :cond_65
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 188
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    goto :goto_25

    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    const-string v1, "}"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

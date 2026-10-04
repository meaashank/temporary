###### Class com.amazonaws.services.cognitoidentityprovider.model.AdminLinkProviderForUserRequest (com.amazonaws.services.cognitoidentityprovider.model.AdminLinkProviderForUserRequest)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AdminLinkProviderForUserRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

.field private c:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;)V
    .registers 2

    .line 467
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    return-void
.end method

.method public d(Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;
    .registers 2

    .line 542
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

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

    .line 586
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;

    if-nez v2, :cond_d

    return v1

    .line 588
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;

    .line 590
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

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

    .line 592
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 593
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 595
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

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

    .line 597
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 598
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 600
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v3

    if-nez v3, :cond_76

    const/4 v3, 0x1

    goto :goto_77

    :cond_76
    const/4 v3, 0x0

    :goto_77
    xor-int/2addr v2, v3

    if-eqz v2, :cond_7b

    return v1

    .line 602
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 603
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 572
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 574
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 575
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DestinationUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/ProviderUserIdentifierType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

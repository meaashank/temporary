###### Class com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityRequest (com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityRequest)
.class public Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "LookupDeveloperIdentityRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->c:Ljava/lang/String;

    return-void
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

    .line 492
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;

    if-nez v2, :cond_d

    return v1

    .line 494
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;

    .line 496
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

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

    .line 498
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 499
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 501
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

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

    .line 503
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 504
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 506
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

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

    .line 508
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 509
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 511
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_a1

    const/4 v3, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v3, 0x0

    :goto_a2
    xor-int/2addr v2, v3

    if-eqz v2, :cond_a6

    return v1

    .line 513
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 514
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 516
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_cc

    const/4 v3, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v3, 0x0

    :goto_cd
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d1

    return v1

    .line 518
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 519
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    return v1

    :cond_e6
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 474
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 475
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 478
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 480
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 481
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5e
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeveloperUserIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b4
    const-string v1, "}"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

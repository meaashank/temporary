###### Class com.amazonaws.services.cognitoidentity.model.RoleMapping (com.amazonaws.services.cognitoidentity.model.RoleMapping)
.class public Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;
.super Ljava/lang/Object;
.source "RoleMapping.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/AmbiguousRoleResolutionType;)V
    .registers 2

    .line 329
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/AmbiguousRoleResolutionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/RoleMappingType;)V
    .registers 2

    .line 165
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMappingType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c:Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentity/model/AmbiguousRoleResolutionType;)Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;
    .registers 2

    .line 367
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/AmbiguousRoleResolutionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentity/model/RoleMappingType;)Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;
    .registers 2

    .line 194
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMappingType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;)Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;
    .registers 2

    .line 436
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c:Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c:Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b:Ljava/lang/String;

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

    .line 483
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;

    if-nez v2, :cond_d

    return v1

    .line 485
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;

    .line 487
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

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

    .line 489
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 491
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

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

    .line 493
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 494
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 496
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

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

    .line 498
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 499
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 466
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 469
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 472
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbiguousRoleResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RulesConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

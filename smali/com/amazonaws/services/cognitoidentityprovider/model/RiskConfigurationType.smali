###### Class com.amazonaws.services.cognitoidentityprovider.model.RiskConfigurationType (com.amazonaws.services.cognitoidentityprovider.model.RiskConfigurationType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;
.super Ljava/lang/Object;
.source "RiskConfigurationType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

.field private d:Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

.field private e:Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

.field private f:Ljava/util/Date;


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

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;)V
    .registers 2

    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e:Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e:Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e:Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    return-object v0
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

    .line 461
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;

    if-nez v2, :cond_d

    return v1

    .line 463
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;

    .line 465
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

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

    .line 467
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 468
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 470
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

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

    .line 472
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 474
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    .line 475
    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

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

    .line 477
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 478
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v2

    .line 479
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v3

    .line 478
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 481
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    .line 482
    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

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

    .line 484
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 485
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v2

    .line 486
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v3

    .line 485
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 488
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    .line 489
    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

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

    .line 491
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 492
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v2

    .line 493
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v3

    .line 492
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 495
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_f7

    const/4 v3, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v3, 0x0

    :goto_f8
    xor-int/2addr v2, v3

    if-eqz v2, :cond_fc

    return v1

    .line 497
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 498
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    return v1

    :cond_111
    return v0
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 435
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 436
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 439
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    .line 440
    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 443
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    .line 444
    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 447
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 450
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_69

    goto :goto_71

    :cond_69
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_71
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompromisedCredentialsRiskConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountTakeoverRiskConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RiskExceptionConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastModifiedDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    const-string v1, "}"

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

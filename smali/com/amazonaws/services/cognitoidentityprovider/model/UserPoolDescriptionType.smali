###### Class com.amazonaws.services.cognitoidentityprovider.model.UserPoolDescriptionType (com.amazonaws.services.cognitoidentityprovider.model.UserPoolDescriptionType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
.super Ljava/lang/Object;
.source "UserPoolDescriptionType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Date;

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
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;)V
    .registers 2

    .line 312
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
    .registers 2

    .line 334
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f:Ljava/util/Date;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f:Ljava/util/Date;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Date;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e:Ljava/util/Date;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d:Ljava/lang/String;

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

    .line 479
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;

    if-nez v2, :cond_d

    return v1

    .line 481
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;

    .line 483
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

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

    .line 485
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 487
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

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

    .line 489
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 491
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

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

    .line 493
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 494
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 496
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

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

    .line 498
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 500
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

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

    .line 502
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 503
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 505
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

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

    .line 507
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 508
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    return v1

    :cond_111
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 460
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 461
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 463
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 464
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 466
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 468
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_69

    goto :goto_71

    :cond_69
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_71
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LambdaConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastModifiedDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    const-string v1, "}"

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

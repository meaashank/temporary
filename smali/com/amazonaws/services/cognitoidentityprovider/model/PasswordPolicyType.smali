###### Class com.amazonaws.services.cognitoidentityprovider.model.PasswordPolicyType (com.amazonaws.services.cognitoidentityprovider.model.PasswordPolicyType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;
.super Ljava/lang/Object;
.source "PasswordPolicyType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a:Ljava/lang/Integer;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public d(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d()Ljava/lang/Boolean;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e(Ljava/lang/Boolean;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->d:Ljava/lang/Boolean;

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

    .line 455
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;

    if-nez v2, :cond_d

    return v1

    .line 457
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;

    .line 459
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

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

    .line 461
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 462
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 464
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

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

    .line 466
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 467
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 469
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

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

    .line 471
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 472
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 474
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

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

    .line 476
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 477
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 479
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

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

    .line 481
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 482
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    return v1

    :cond_e6
    return v0
.end method

.method public f(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f()Ljava/lang/Boolean;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g(Ljava/lang/Boolean;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public h(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;
    .registers 2

    .line 401
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public h()Ljava/lang/Boolean;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 436
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 438
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 440
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 444
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_5e
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/Boolean;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinimumLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequireUppercase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequireLowercase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequireNumbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequireSymbols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b4
    const-string v1, "}"

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

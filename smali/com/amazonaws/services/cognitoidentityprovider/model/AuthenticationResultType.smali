###### Class com.amazonaws.services.cognitoidentityprovider.model.AuthenticationResultType (com.amazonaws.services.cognitoidentityprovider.model.AuthenticationResultType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
.super Ljava/lang/Object;
.source "AuthenticationResultType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;


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

    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/Integer;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d:Ljava/lang/String;

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

    .line 425
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    if-nez v2, :cond_d

    return v1

    .line 427
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    .line 429
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

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

    .line 431
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 432
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 434
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

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

    .line 436
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 437
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 439
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

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

    .line 441
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 442
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 444
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

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

    .line 446
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 447
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 449
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

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

    .line 451
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 453
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

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

    .line 455
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 456
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    return v1

    :cond_111
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 407
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 408
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 409
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 411
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 412
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 414
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v2

    if-nez v2, :cond_69

    goto :goto_71

    :cond_69
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->hashCode()I

    move-result v1

    :goto_71
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpiresIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TokenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefreshToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewDeviceMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    const-string v1, "}"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

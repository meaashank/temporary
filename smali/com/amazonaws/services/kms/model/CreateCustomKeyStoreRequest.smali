###### Class com.amazonaws.services.kms.model.CreateCustomKeyStoreRequest (com.amazonaws.services.kms.model.CreateCustomKeyStoreRequest)
.class public Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateCustomKeyStoreRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->c:Ljava/lang/String;

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

    .line 575
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;

    if-nez v2, :cond_d

    return v1

    .line 577
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;

    .line 579
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

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

    .line 581
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 582
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 584
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

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

    .line 586
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 587
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 589
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

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

    .line 591
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 592
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 594
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

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

    .line 596
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 597
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v1

    :cond_bb
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 485
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 556
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 558
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 561
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 564
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4b
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomKeyStoreName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudHsmClusterId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrustAnchorCertificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyStorePassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    const-string v1, "}"

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

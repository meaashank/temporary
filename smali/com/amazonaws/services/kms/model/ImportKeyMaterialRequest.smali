###### Class com.amazonaws.services.kms.model.ImportKeyMaterialRequest (com.amazonaws.services.kms.model.ImportKeyMaterialRequest)
.class public Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ImportKeyMaterialRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/kms/model/ExpirationModelType;)V
    .registers 2

    .line 693
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ExpirationModelType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 415
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 559
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->d:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/kms/model/ExpirationModelType;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .registers 2

    .line 723
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ExpirationModelType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->d:Ljava/util/Date;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 486
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .registers 2

    .line 514
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->c:Ljava/nio/ByteBuffer;

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

    .line 775
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;

    if-nez v2, :cond_d

    return v1

    .line 777
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;

    .line 779
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

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

    .line 781
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 783
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

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

    .line 785
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 786
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 788
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

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

    .line 790
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 791
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 793
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

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

    .line 795
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 797
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

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

    .line 799
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 800
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    return v1

    :cond_e6
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 757
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 759
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 761
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 762
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 764
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5e
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/nio/ByteBuffer;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public j()Ljava/nio/ByteBuffer;
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public k()Ljava/util/Date;
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->d:Ljava/util/Date;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->i()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncryptedKeyMaterial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->j()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->k()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpirationModel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b4
    const-string v1, "}"

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

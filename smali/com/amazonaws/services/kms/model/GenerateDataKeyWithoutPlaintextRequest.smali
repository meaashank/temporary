###### Class com.amazonaws.services.kms.model.GenerateDataKeyWithoutPlaintextRequest (com.amazonaws.services.kms.model.GenerateDataKeyWithoutPlaintextRequest)
.class public Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GenerateDataKeyWithoutPlaintextRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 5

    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    .line 555
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 558
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 556
    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicated keys ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") are provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 6

    .line 847
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->e:Ljava/util/List;

    .line 850
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 851
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DataKeySpec;)V
    .registers 2

    .line 660
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 733
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 813
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->e:Ljava/util/List;

    return-void

    .line 817
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->e:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 494
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    return-void
.end method

.method public b(Lcom/amazonaws/services/kms/model/DataKeySpec;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 2

    .line 686
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 2

    .line 761
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;"
        }
    .end annotation

    .line 884
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;"
        }
    .end annotation

    .line 526
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->c:Ljava/lang/String;

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

    .line 936
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;

    if-nez v2, :cond_d

    return v1

    .line 938
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;

    .line 940
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

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

    .line 942
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 944
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

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

    .line 946
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 947
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 949
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

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

    .line 951
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 953
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

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

    .line 955
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 956
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 958
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

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

    .line 960
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 961
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    return v1

    :cond_e6
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 918
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 920
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 921
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 923
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 925
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_5e
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .registers 2

    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->b:Ljava/util/Map;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->e:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncryptionContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->i()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberOfBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b4
    const-string v1, "}"

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

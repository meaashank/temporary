###### Class com.amazonaws.services.kms.model.ReEncryptRequest (com.amazonaws.services.kms.model.ReEncryptRequest)
.class public Lcom/amazonaws/services/kms/model/ReEncryptRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ReEncryptRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

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

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .line 52
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    .line 265
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 268
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 266
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

.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 6

    .line 735
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->e:Ljava/util/List;

    .line 738
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 739
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->a:Ljava/nio/ByteBuffer;

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

    .line 701
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->e:Ljava/util/List;

    return-void

    .line 705
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->e:Ljava/util/List;

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

    .line 220
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 2

    .line 564
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 5

    .line 632
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    .line 635
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 638
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 636
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

.method public b(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 771
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    return-object p0
.end method

.method public c(Ljava/util/Map;)V
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

    .line 592
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    return-void
.end method

.method public d(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 611
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

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

    .line 829
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ReEncryptRequest;

    if-nez v2, :cond_d

    return v1

    .line 831
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/ReEncryptRequest;

    .line 833
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

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

    .line 835
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 836
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 838
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

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

    .line 840
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 841
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 843
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

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

    .line 845
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 846
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 848
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    .line 849
    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

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

    .line 851
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 852
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v2

    .line 853
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v3

    .line 852
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 855
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

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

    .line 857
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 858
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    return v1

    :cond_e6
    return v0
.end method

.method public h()Ljava/nio/ByteBuffer;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 806
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 809
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v3

    .line 810
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 812
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 815
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    .line 816
    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 818
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

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

    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 2

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->b:Ljava/util/Map;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/Map;
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

    .line 578
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public m()Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .registers 2

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->d:Ljava/util/Map;

    return-object p0
.end method

.method public n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->e:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CiphertextBlob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->h()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceEncryptionContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->i()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DestinationKeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DestinationEncryptionContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->l()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->n()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b4
    const-string v1, "}"

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

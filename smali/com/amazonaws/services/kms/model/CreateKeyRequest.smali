###### Class com.amazonaws.services.kms.model.CreateKeyRequest (com.amazonaws.services.kms.model.CreateKeyRequest)
.class public Lcom/amazonaws/services/kms/model/CreateKeyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateKeyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/services/kms/model/Tag;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 6

    .line 1593
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1594
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->g:Ljava/util/List;

    .line 1596
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 1597
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a(Lcom/amazonaws/services/kms/model/KeyUsageType;)V
    .registers 2

    .line 727
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/kms/model/OriginType;)V
    .registers 2

    .line 1014
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 1439
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1557
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->g:Ljava/util/List;

    return-void

    .line 1561
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->g:Ljava/util/List;

    return-void
.end method

.method public b(Lcom/amazonaws/services/kms/model/KeyUsageType;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 755
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/kms/model/OriginType;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 1082
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 1501
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 550
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/CreateKeyRequest;"
        }
    .end annotation

    .line 1631
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 599
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 675
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->c:Ljava/lang/String;

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

    .line 1692
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    if-nez v2, :cond_d

    return v1

    .line 1694
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    .line 1696
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

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

    .line 1698
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 1700
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

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

    .line 1702
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 1703
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 1705
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

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

    .line 1707
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 1709
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

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

    .line 1711
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 1713
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

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

    .line 1715
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 1716
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 1718
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    .line 1719
    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

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

    .line 1721
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 1722
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v2

    .line 1723
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v3

    .line 1722
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 1725
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_122

    const/4 v3, 0x1

    goto :goto_123

    :cond_122
    const/4 v3, 0x0

    :goto_123
    xor-int/2addr v2, v3

    if-eqz v2, :cond_127

    return v1

    .line 1727
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13c

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13c

    return v1

    :cond_13c
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 703
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 882
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 950
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1670
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1672
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1673
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1674
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1676
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1679
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    .line 1680
    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1681
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7c

    goto :goto_84

    :cond_7c
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_84
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 1204
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .registers 2

    .line 1270
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 819
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 1143
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .registers 2

    .line 1327
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public n()Ljava/lang/Boolean;
    .registers 2

    .line 1383
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;"
        }
    .end annotation

    .line 1529
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->g:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 1645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyUsage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomKeyStoreId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BypassPolicyLockoutSafetyCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_fa

    .line 1660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fa
    const-string v1, "}"

    .line 1661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

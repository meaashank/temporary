###### Class com.amazonaws.services.kms.model.KeyMetadata (com.amazonaws.services.kms.model.KeyMetadata)
.class public Lcom/amazonaws/services/kms/model/KeyMetadata;
.super Ljava/lang/Object;
.source "KeyMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Date;

.field private j:Ljava/util/Date;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ExpirationModelType;)V
    .registers 2

    .line 1365
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ExpirationModelType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/kms/model/KeyManagerType;)V
    .registers 2

    .line 1502
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyManagerType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->o:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/kms/model/KeyState;)V
    .registers 2

    .line 801
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyState;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/kms/model/KeyUsageType;)V
    .registers 2

    .line 639
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/kms/model/OriginType;)V
    .registers 2

    .line 1085
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->d:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/kms/model/ExpirationModelType;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1391
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ExpirationModelType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->n:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/kms/model/KeyManagerType;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1533
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyManagerType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->o:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/kms/model/KeyState;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 838
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyState;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/kms/model/KeyUsageType;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 666
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/kms/model/OriginType;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1118
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->k:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->d:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 871
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->i:Ljava/util/Date;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 892
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->i:Ljava/util/Date;

    return-object p0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->d:Ljava/util/Date;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->c:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/util/Date;)V
    .registers 2

    .line 938
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->j:Ljava/util/Date;

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

    .line 1619
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/KeyMetadata;

    if-nez v2, :cond_d

    return v1

    .line 1621
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/KeyMetadata;

    .line 1623
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

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

    .line 1625
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1626
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 1628
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

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

    .line 1630
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 1632
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

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

    .line 1634
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 1636
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

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

    .line 1638
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 1639
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 1641
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

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

    .line 1643
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 1645
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

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

    .line 1647
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 1648
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 1650
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

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

    .line 1652
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13c

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 1654
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14d

    const/4 v3, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v3, 0x0

    :goto_14e
    xor-int/2addr v2, v3

    if-eqz v2, :cond_152

    return v1

    .line 1656
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_167

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 1658
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_178

    const/4 v3, 0x1

    goto :goto_179

    :cond_178
    const/4 v3, 0x0

    :goto_179
    xor-int/2addr v2, v3

    if-eqz v2, :cond_17d

    return v1

    .line 1660
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 1661
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_192

    return v1

    .line 1663
    :cond_192
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_19a

    const/4 v2, 0x1

    goto :goto_19b

    :cond_19a
    const/4 v2, 0x0

    :goto_19b
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1a3

    const/4 v3, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v3, 0x0

    :goto_1a4
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1a8

    return v1

    .line 1665
    :cond_1a8
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1bd

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bd

    return v1

    .line 1667
    :cond_1bd
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c5

    const/4 v2, 0x1

    goto :goto_1c6

    :cond_1c5
    const/4 v2, 0x0

    :goto_1c6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1ce

    const/4 v3, 0x1

    goto :goto_1cf

    :cond_1ce
    const/4 v3, 0x0

    :goto_1cf
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d3

    return v1

    .line 1669
    :cond_1d3
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e8

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e8

    return v1

    .line 1671
    :cond_1e8
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f0

    const/4 v2, 0x1

    goto :goto_1f1

    :cond_1f0
    const/4 v2, 0x0

    :goto_1f1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f9

    const/4 v3, 0x1

    goto :goto_1fa

    :cond_1f9
    const/4 v3, 0x0

    :goto_1fa
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1fe

    return v1

    .line 1673
    :cond_1fe
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_213

    .line 1674
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_213

    return v1

    .line 1676
    :cond_213
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21b

    const/4 v2, 0x1

    goto :goto_21c

    :cond_21b
    const/4 v2, 0x0

    :goto_21c
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_224

    const/4 v3, 0x1

    goto :goto_225

    :cond_224
    const/4 v3, 0x0

    :goto_225
    xor-int/2addr v2, v3

    if-eqz v2, :cond_229

    return v1

    .line 1678
    :cond_229
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23e

    .line 1679
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23e

    return v1

    .line 1681
    :cond_23e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_246

    const/4 v2, 0x1

    goto :goto_247

    :cond_246
    const/4 v2, 0x0

    :goto_247
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24f

    const/4 v3, 0x1

    goto :goto_250

    :cond_24f
    const/4 v3, 0x0

    :goto_250
    xor-int/2addr v2, v3

    if-eqz v2, :cond_254

    return v1

    .line 1683
    :cond_254
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_269

    .line 1684
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_269

    return v1

    .line 1686
    :cond_269
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_271

    const/4 v2, 0x1

    goto :goto_272

    :cond_271
    const/4 v2, 0x0

    :goto_272
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_27a

    const/4 v3, 0x1

    goto :goto_27b

    :cond_27a
    const/4 v3, 0x0

    :goto_27b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_27f

    return v1

    .line 1688
    :cond_27f
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_294

    .line 1689
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_294

    return v1

    :cond_294
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 966
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->j:Ljava/util/Date;

    return-object p0
.end method

.method public f()Ljava/lang/Boolean;
    .registers 2

    .line 453
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->f:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 544
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1588
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1589
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1590
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1592
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1593
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1595
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1596
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1597
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1599
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_a3

    const/4 v3, 0x0

    goto :goto_ab

    :cond_a3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_ab
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1600
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_b6

    const/4 v3, 0x0

    goto :goto_be

    :cond_b6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_be
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1601
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c9

    const/4 v3, 0x0

    goto :goto_d1

    :cond_c9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1603
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_dc

    const/4 v3, 0x0

    goto :goto_e4

    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1605
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ef

    const/4 v3, 0x0

    goto :goto_f7

    :cond_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1607
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_102

    const/4 v3, 0x0

    goto :goto_10a

    :cond_102
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1608
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_114

    goto :goto_11c

    :cond_114
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11c
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->g:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->g:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/util/Date;
    .registers 2

    .line 855
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->i:Ljava/util/Date;

    return-object v0
.end method

.method public k()Ljava/util/Date;
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->j:Ljava/util/Date;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->h:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 768
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->h:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 995
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1141
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 1023
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->k:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1056
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->k:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1217
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1296
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 1163
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->l:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1190
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->l:Ljava/lang/String;

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .line 1418
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->o:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    .line 1243
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->m:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1274
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->m:Ljava/lang/String;

    return-object p0
.end method

.method public s(Ljava/lang/String;)V
    .registers 2

    .line 1317
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->n:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1343
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->n:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 1547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWSAccountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyUsage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeletionDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    :cond_145
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_168

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_168
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18b

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    :cond_18b
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1ae

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomKeyStoreId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    :cond_1ae
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d1

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudHsmClusterId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :cond_1d1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f4

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpirationModel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    :cond_1f4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_212

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_212
    const-string v1, "}"

    .line 1578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .registers 2

    .line 1444
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->o:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/KeyMetadata;
    .registers 2

    .line 1475
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/KeyMetadata;->o:Ljava/lang/String;

    return-object p0
.end method

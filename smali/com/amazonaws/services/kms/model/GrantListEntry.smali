###### Class com.amazonaws.services.kms.model.GrantListEntry (com.amazonaws.services.kms.model.GrantListEntry)
.class public Lcom/amazonaws/services/kms/model/GrantListEntry;
.super Ljava/lang/Object;
.source "GrantListEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amazonaws/services/kms/model/GrantConstraints;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 6

    .line 560
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->h:Ljava/util/List;

    .line 563
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 564
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/GrantConstraints;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->i:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->a:Ljava/lang/String;

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

    .line 538
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->h:Ljava/util/List;

    return-void

    .line 542
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->h:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->d:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/kms/model/GrantConstraints;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->i:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GrantListEntry;"
        }
    .end annotation

    .line 584
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->d:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->d:Ljava/util/Date;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->c:Ljava/lang/String;

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

    .line 703
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GrantListEntry;

    if-nez v2, :cond_d

    return v1

    .line 705
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/GrantListEntry;

    .line 707
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

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

    .line 709
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 711
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

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

    .line 713
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 715
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

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

    .line 717
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 719
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

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

    .line 721
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 722
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 724
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

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

    .line 726
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 727
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 729
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

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

    .line 731
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 732
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 734
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

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

    .line 736
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 737
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 739
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

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

    .line 741
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 742
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 744
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

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

    .line 746
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 747
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/kms/model/GrantConstraints;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_192

    return v1

    :cond_192
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->e:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->h:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 679
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 680
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 681
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 683
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 685
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 687
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 689
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 690
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 692
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-nez v2, :cond_a2

    goto :goto_aa

    :cond_a2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->hashCode()I

    move-result v1

    :goto_aa
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/amazonaws/services/kms/model/GrantConstraints;
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->i:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->f:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 453
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->f:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->g:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->g:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GranteePrincipal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetiringPrincipal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IssuingAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v1

    if-eqz v1, :cond_140

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_140
    const-string v1, "}"

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.services.cognitoidentityprovider.model.UserImportJobType (com.amazonaws.services.cognitoidentityprovider.model.UserImportJobType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
.super Ljava/lang/Object;
.source "UserImportJobType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Date;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Long;

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/Long;

.field private m:Ljava/lang/String;


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

    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;)V
    .registers 2

    .line 1025
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    .line 1249
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 1144
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobStatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/Long;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 1267
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j:Ljava/lang/Long;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Long;)V
    .registers 2

    .line 1294
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k:Ljava/lang/Long;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f:Ljava/util/Date;

    return-void
.end method

.method public d(Ljava/lang/Long;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 1312
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 517
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f:Ljava/util/Date;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Date;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e:Ljava/util/Date;

    return-object v0
.end method

.method public e(Ljava/lang/Long;)V
    .registers 2

    .line 1339
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l:Ljava/lang/Long;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/util/Date;)V
    .registers 2

    .line 544
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g:Ljava/util/Date;

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

    .line 1496
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    if-nez v2, :cond_d

    return v1

    .line 1498
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    .line 1500
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

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

    .line 1502
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 1504
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

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

    .line 1506
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 1508
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

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

    .line 1510
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 1511
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 1513
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

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

    .line 1515
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 1516
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 1518
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

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

    .line 1520
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 1521
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 1523
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

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

    .line 1525
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 1526
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 1528
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

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

    .line 1530
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 1531
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 1533
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

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

    .line 1535
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_167

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 1537
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

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

    .line 1539
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 1540
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_192

    return v1

    .line 1542
    :cond_192
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_19a

    const/4 v2, 0x1

    goto :goto_19b

    :cond_19a
    const/4 v2, 0x0

    :goto_19b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

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

    .line 1544
    :cond_1a8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1bd

    .line 1545
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bd

    return v1

    .line 1547
    :cond_1bd
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1c5

    const/4 v2, 0x1

    goto :goto_1c6

    :cond_1c5
    const/4 v2, 0x0

    :goto_1c6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

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

    .line 1549
    :cond_1d3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1e8

    .line 1550
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e8

    return v1

    .line 1552
    :cond_1e8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1f0

    const/4 v2, 0x1

    goto :goto_1f1

    :cond_1f0
    const/4 v2, 0x0

    :goto_1f1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

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

    .line 1554
    :cond_1fe
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_213

    .line 1555
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_213

    return v1

    .line 1557
    :cond_213
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21b

    const/4 v2, 0x1

    goto :goto_21c

    :cond_21b
    const/4 v2, 0x0

    :goto_21c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

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

    .line 1559
    :cond_229
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23e

    .line 1560
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23e

    return v1

    :cond_23e
    return v0
.end method

.method public f(Ljava/lang/Long;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 1357
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l:Ljava/lang/Long;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 562
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g:Ljava/util/Date;

    return-object p0
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f:Ljava/util/Date;

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g:Ljava/util/Date;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 677
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1464
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1465
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1466
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1468
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1470
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1471
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1473
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1474
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1477
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a3

    const/4 v3, 0x0

    goto :goto_ab

    :cond_a3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_ab
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1479
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_b6

    const/4 v3, 0x0

    goto :goto_be

    :cond_b6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_be
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1481
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_c9

    const/4 v3, 0x0

    goto :goto_d1

    :cond_c9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_d1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1483
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_dc

    const/4 v3, 0x0

    goto :goto_e4

    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_e4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1485
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ee

    goto :goto_f6

    :cond_ee
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f6
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1169
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 791
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 910
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/Long;
    .registers 2

    .line 1236
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j:Ljava/lang/Long;

    return-object v0
.end method

.method public k()Ljava/lang/Long;
    .registers 2

    .line 1281
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k:Ljava/lang/Long;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 1193
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 1222
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/Long;
    .registers 2

    .line 1326
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l:Ljava/lang/Long;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1375
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 1392
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;
    .registers 2

    .line 1414
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 1428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreSignedUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompletionDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudWatchLogsRoleArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    :cond_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_168

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportedUsers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    :cond_168
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_18b

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkippedUsers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    :cond_18b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1ae

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FailedUsers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    :cond_1ae
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1cc

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompletionMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cc
    const-string v1, "}"

    .line 1455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

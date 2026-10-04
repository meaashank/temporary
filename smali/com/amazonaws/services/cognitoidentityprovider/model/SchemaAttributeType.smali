###### Class com.amazonaws.services.cognitoidentityprovider.model.SchemaAttributeType (com.amazonaws.services.cognitoidentityprovider.model.SchemaAttributeType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
.super Ljava/lang/Object;
.source "SchemaAttributeType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

.field private g:Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;


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

    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeDataType;)V
    .registers 2

    .line 222
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeDataType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;)V
    .registers 2

    .line 548
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 244
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeDataType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 567
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/Boolean;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e(Ljava/lang/Boolean;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->e:Ljava/lang/Boolean;

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

    .line 679
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;

    if-nez v2, :cond_d

    return v1

    .line 681
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;

    .line 683
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

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

    .line 685
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 687
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

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

    .line 689
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 690
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 692
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

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

    .line 694
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 695
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 697
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

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

    .line 699
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 701
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

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

    .line 703
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e6

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 705
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    .line 706
    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

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

    .line 708
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 709
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v2

    .line 710
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v3

    .line 709
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 712
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    .line 713
    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

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

    .line 715
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 716
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object p1

    .line 717
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v2

    .line 716
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13c

    return v1

    :cond_13c
    return v0
.end method

.method public f(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f()Ljava/lang/Boolean;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public h()Ljava/lang/Boolean;
    .registers 2

    .line 481
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 652
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 654
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 657
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v3

    .line 658
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 659
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 660
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 663
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v3

    .line 664
    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 667
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v2

    if-nez v2, :cond_7c

    goto :goto_84

    :cond_7c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v1

    .line 668
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;->hashCode()I

    move-result v1

    :goto_84
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeDataType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeveloperOnlyAttribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberAttributeConstraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v1

    if-eqz v1, :cond_fa

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringAttributeConstraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fa
    const-string v1, "}"

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

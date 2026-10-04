###### Class com.amazonaws.services.cognitoidentityprovider.model.LambdaConfigType (com.amazonaws.services.cognitoidentityprovider.model.LambdaConfigType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
.super Ljava/lang/Object;
.source "LambdaConfigType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


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

    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c:Ljava/lang/String;

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

    .line 857
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    if-nez v2, :cond_d

    return v1

    .line 859
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    .line 861
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

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

    .line 863
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 864
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 866
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

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

    .line 868
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 869
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 871
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

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

    .line 873
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 874
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 876
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

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

    .line 878
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 879
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 881
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

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

    .line 883
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 884
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 886
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

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

    .line 888
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 889
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 891
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

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

    .line 893
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 894
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 896
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    .line 897
    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

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

    .line 899
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 900
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v3

    .line 900
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 903
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

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

    .line 905
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 906
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_192

    return v1

    .line 908
    :cond_192
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19a

    const/4 v2, 0x1

    goto :goto_19b

    :cond_19a
    const/4 v2, 0x0

    :goto_19b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

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

    .line 910
    :cond_1a8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1bd

    .line 911
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1bd

    return v1

    :cond_1bd
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 613
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 826
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 828
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 830
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 832
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 834
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 836
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 838
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 841
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    .line 842
    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 844
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a3

    const/4 v3, 0x0

    goto :goto_ab

    :cond_a3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_ab
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 846
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    goto :goto_bd

    :cond_b5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_bd
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 467
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 656
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    .line 695
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 719
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i:Ljava/lang/String;

    return-object p0
.end method

.method public s(Ljava/lang/String;)V
    .registers 2

    .line 758
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreSignUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostConfirmation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreAuthentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostAuthentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefineAuthChallenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateAuthChallenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerifyAuthChallengeResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreTokenGeneration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_163

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserMigration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_163
    const-string v1, "}"

    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

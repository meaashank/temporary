###### Class com.amazonaws.services.cognitoidentity.model.DescribeIdentityResult (com.amazonaws.services.cognitoidentity.model.DescribeIdentityResult)
.class public Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
.super Ljava/lang/Object;
.source "DescribeIdentityResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
    .registers 6

    .line 161
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b:Ljava/util/List;

    .line 164
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 165
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a:Ljava/lang/String;

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

    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b:Ljava/util/List;

    return-void

    .line 143
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c:Ljava/util/Date;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c:Ljava/util/Date;

    return-object v0
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d:Ljava/util/Date;

    return-void
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d:Ljava/util/Date;

    return-object p0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d:Ljava/util/Date;

    return-object v0
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

    .line 323
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;

    if-nez v2, :cond_d

    return v1

    .line 325
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;

    .line 327
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

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

    .line 329
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 330
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 332
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

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

    .line 334
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 336
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

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

    .line 338
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 339
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 341
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

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

    .line 343
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 344
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v1

    :cond_bb
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 307
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 310
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 312
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_4b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastModifiedDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    const-string v1, "}"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

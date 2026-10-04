###### Class com.amazonaws.services.cognitoidentityprovider.model.RiskExceptionConfigurationType (com.amazonaws.services.cognitoidentityprovider.model.RiskExceptionConfigurationType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;
.super Ljava/lang/Object;
.source "RiskExceptionConfigurationType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
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
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;
    .registers 6

    .line 104
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a:Ljava/util/List;

    .line 107
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 108
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a:Ljava/util/List;

    return-object v0
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

    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a:Ljava/util/List;

    return-void

    .line 81
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;
    .registers 6

    .line 190
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b:Ljava/util/List;

    .line 193
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 194
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
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

    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/Collection;)V
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

    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b:Ljava/util/List;

    return-void

    .line 170
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b:Ljava/util/List;

    return-void
.end method

.method public d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;"
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->c(Ljava/util/Collection;)V

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

    .line 259
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    if-nez v2, :cond_d

    return v1

    .line 261
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    .line 263
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

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

    .line 265
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 266
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 268
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

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

    .line 270
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 271
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    return v1

    :cond_65
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 246
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 248
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1d

    goto :goto_25

    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockedIPRangeList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkippedIPRangeList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    const-string v1, "}"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityResult (com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityResult)
.class public Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
.super Ljava/lang/Object;
.source "LookupDeveloperIdentityResult.java"

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

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .registers 6

    .line 182
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b:Ljava/util/List;

    .line 186
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 187
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a:Ljava/lang/String;

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

    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b:Ljava/util/List;

    return-void

    .line 158
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a(Ljava/util/Collection;)V

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

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c:Ljava/lang/String;

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

    .line 354
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;

    if-nez v2, :cond_d

    return v1

    .line 356
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;

    .line 358
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

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

    .line 360
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 361
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 363
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 364
    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

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

    .line 366
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 367
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    .line 368
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v3

    .line 367
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 370
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

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

    .line 372
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 373
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 338
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    .line 342
    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 343
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeveloperUserIdentifierList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

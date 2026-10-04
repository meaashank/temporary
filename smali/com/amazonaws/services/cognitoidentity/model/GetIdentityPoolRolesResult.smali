###### Class com.amazonaws.services.cognitoidentity.model.GetIdentityPoolRolesResult (com.amazonaws.services.cognitoidentity.model.GetIdentityPoolRolesResult)
.class public Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
.super Ljava/lang/Object;
.source "GetIdentityPoolRolesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

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

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

    .line 292
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 295
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 293
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

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    .line 182
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 183
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

.method public a()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a:Ljava/lang/String;

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

    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    return-object p0
.end method

.method public b()Ljava/util/Map;
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

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 2

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b:Ljava/util/Map;

    return-object p0
.end method

.method public c(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;",
            ">;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

    return-void
.end method

.method public d(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

    return-object p0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 2

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c:Ljava/util/Map;

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

    .line 351
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;

    if-nez v2, :cond_d

    return v1

    .line 353
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;

    .line 355
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

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

    .line 357
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 358
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 360
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

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

    .line 362
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 364
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

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

    .line 366
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 367
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 337
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 338
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 340
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoleMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

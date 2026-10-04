###### Class com.amazonaws.services.cognitoidentity.model.SetIdentityPoolRolesRequest (com.amazonaws.services.cognitoidentity.model.SetIdentityPoolRolesRequest)
.class public Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetIdentityPoolRolesRequest.java"

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

    .line 31
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;)Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

    .line 329
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 332
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 330
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

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

    .line 198
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 201
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 199
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

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->a:Ljava/lang/String;

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

    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

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

    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

    return-void
.end method

.method public d(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

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

    .line 388
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;

    if-nez v2, :cond_d

    return v1

    .line 390
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;

    .line 392
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

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

    .line 394
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 395
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 397
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

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

    .line 399
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 401
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

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

    .line 403
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 404
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 374
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 375
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 377
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/util/Map;
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

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
    .registers 2

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->b:Ljava/util/Map;

    return-object p0
.end method

.method public k()Ljava/util/Map;
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

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;
    .registers 2

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->c:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->i()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoleMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;->k()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

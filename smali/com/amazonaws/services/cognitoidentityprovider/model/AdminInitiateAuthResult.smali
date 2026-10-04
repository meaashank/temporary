###### Class com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthResult (com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthResult)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
.super Ljava/lang/Object;
.source "AdminInitiateAuthResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 5

    .line 1223
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    .line 1226
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1229
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1227
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

    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)V
    .registers 2

    .line 1284
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;)V
    .registers 2

    .line 789
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 467
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a:Ljava/lang/String;

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

    .line 1135
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 2

    .line 1312
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 2

    .line 952
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeNameType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 2

    .line 630
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;"
        }
    .end annotation

    .line 1187
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 981
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
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

    .line 1089
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 1009
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 2

    const/4 v0, 0x0

    .line 1240
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c:Ljava/util/Map;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 2

    .line 1042
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 2

    .line 1262
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

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

    .line 1361
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;

    if-nez v2, :cond_d

    return v1

    .line 1363
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;

    .line 1365
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

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

    .line 1367
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1368
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 1370
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

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

    .line 1372
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 1374
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

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

    .line 1376
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 1377
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 1379
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

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

    .line 1381
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 1382
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v1

    :cond_bb
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1345
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1346
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1348
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1350
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->hashCode()I

    move-result v1

    :goto_4b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 1326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChallengeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChallengeParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    const-string v1, "}"

    .line 1335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

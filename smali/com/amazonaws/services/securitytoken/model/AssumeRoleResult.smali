###### Class com.amazonaws.services.securitytoken.model.AssumeRoleResult (com.amazonaws.services.securitytoken.model.AssumeRoleResult)
.class public Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
.super Ljava/lang/Object;
.source "AssumeRoleResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/securitytoken/model/Credentials;

.field private b:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/securitytoken/model/Credentials;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    return-void
.end method

.method public a(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c:Ljava/lang/Integer;

    return-void
.end method

.method public b(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c:Ljava/lang/Integer;

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

    .line 350
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;

    if-nez v2, :cond_d

    return v1

    .line 352
    :cond_d
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;

    .line 354
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

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

    .line 356
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 357
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/securitytoken/model/Credentials;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 359
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

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

    .line 361
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 362
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 364
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 367
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 335
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssumedRoleUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->b()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackedPolicySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

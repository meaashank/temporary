###### Class com.amazonaws.services.cognitoidentityprovider.model.SignUpResult (com.amazonaws.services.cognitoidentityprovider.model.SignUpResult)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
.super Ljava/lang/Object;
.source "SignUpResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c:Ljava/lang/String;

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

    .line 259
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    if-nez v2, :cond_d

    return v1

    .line 261
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    .line 263
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 266
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 268
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 271
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 273
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

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

    .line 275
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

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

    .line 245
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 248
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserConfirmed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CodeDeliveryDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserSub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserConfigType (com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserConfigType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;
.super Ljava/lang/Object;
.source "AdminCreateUserConfigType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;


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

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b:Ljava/lang/Integer;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

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

    .line 342
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    if-nez v2, :cond_d

    return v1

    .line 344
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    .line 346
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 347
    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

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

    .line 349
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 350
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 352
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 353
    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

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

    .line 355
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 356
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 358
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

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

    .line 360
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 361
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 323
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 327
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v3

    .line 328
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowAdminCreateUserOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnusedAccountValidityDays: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InviteMessageTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

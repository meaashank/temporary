###### Class com.amazonaws.services.cognitoidentityprovider.model.GetUserPoolMfaConfigResult (com.amazonaws.services.cognitoidentityprovider.model.GetUserPoolMfaConfigResult)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;
.super Ljava/lang/Object;
.source "GetUserPoolMfaConfigResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

.field private b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;)V
    .registers 2

    .line 208
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;
    .registers 2

    .line 230
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c:Ljava/lang/String;

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

    .line 278
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;

    if-nez v2, :cond_d

    return v1

    .line 280
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;

    .line 282
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

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

    .line 284
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 285
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 287
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 288
    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

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

    .line 290
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 291
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    .line 292
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v3

    .line 291
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 294
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

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

    .line 296
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 297
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

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

    .line 261
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    .line 265
    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_38
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsMfaConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftwareTokenMfaConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MfaConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string v1, "}"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.services.cognitoidentityprovider.model.SetUserPoolMfaConfigRequest (com.amazonaws.services.cognitoidentityprovider.model.SetUserPoolMfaConfigRequest)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetUserPoolMfaConfigRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

.field private c:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;)V
    .registers 2

    .line 283
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;
    .registers 2

    .line 305
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->d:Ljava/lang/String;

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

    .line 356
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;

    if-nez v2, :cond_d

    return v1

    .line 358
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;

    .line 360
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

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

    .line 362
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 363
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 365
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

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

    .line 367
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 368
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 370
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    .line 371
    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

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

    .line 373
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 374
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    .line 375
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 377
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

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

    .line 379
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 380
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v1

    :cond_bb
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 337
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    .line 343
    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 345
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4b
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsMfaConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftwareTokenMfaConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MfaConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    const-string v1, "}"

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

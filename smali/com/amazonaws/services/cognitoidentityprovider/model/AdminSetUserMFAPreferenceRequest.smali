###### Class com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserMFAPreferenceRequest (com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserMFAPreferenceRequest)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AdminSetUserMFAPreferenceRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

.field private b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->d:Ljava/lang/String;

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

    .line 316
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;

    if-nez v2, :cond_d

    return v1

    .line 318
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;

    .line 320
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

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

    .line 322
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 323
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 325
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 326
    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

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

    .line 328
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 329
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 331
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

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

    .line 333
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 335
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

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

    .line 337
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 338
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v1

    :cond_bb
    return v0
.end method

.method public h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 299
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 302
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 305
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4b
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSMfaSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/SMSMfaSettingsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftwareTokenMfaSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    const-string v1, "}"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.services.cognitoidentityprovider.model.DeviceConfigurationType (com.amazonaws.services.cognitoidentityprovider.model.DeviceConfigurationType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;
.super Ljava/lang/Object;
.source "DeviceConfigurationType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;


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

    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public d(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d()Ljava/lang/Boolean;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b:Ljava/lang/Boolean;

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

    .line 209
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    if-nez v2, :cond_d

    return v1

    .line 211
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    .line 213
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 214
    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

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

    .line 216
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 217
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v2

    .line 218
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v3

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 220
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 221
    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

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

    .line 223
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 224
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object p1

    .line 225
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v2

    .line 224
    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    return v1

    :cond_65
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 193
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    .line 194
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 197
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1d

    goto :goto_25

    .line 198
    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChallengeRequiredOnNewDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceOnlyRememberedOnUserPrompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    const-string v1, "}"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

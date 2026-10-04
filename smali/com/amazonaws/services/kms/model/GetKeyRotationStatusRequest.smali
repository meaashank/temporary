###### Class com.amazonaws.services.kms.model.GetKeyRotationStatusRequest (com.amazonaws.services.kms.model.GetKeyRotationStatusRequest)
.class public Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetKeyRotationStatusRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->a:Ljava/lang/String;

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

    .line 325
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;

    if-nez v2, :cond_d

    return v1

    .line 327
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;

    .line 329
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

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

    .line 331
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 314
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "}"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

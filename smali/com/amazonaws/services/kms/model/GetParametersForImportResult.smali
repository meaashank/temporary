###### Class com.amazonaws.services.kms.model.GetParametersForImportResult (com.amazonaws.services.kms.model.GetParametersForImportResult)
.class public Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
.super Ljava/lang/Object;
.source "GetParametersForImportResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d:Ljava/util/Date;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public d(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d:Ljava/util/Date;

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

    .line 358
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;

    if-nez v2, :cond_d

    return v1

    .line 360
    :cond_d
    check-cast p1, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;

    .line 362
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

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

    .line 364
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 366
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

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

    .line 368
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 369
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 371
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 374
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 376
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

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

    .line 378
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 379
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v1

    :cond_bb
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 342
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 344
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 345
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 347
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_4b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParametersValidTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    const-string v1, "}"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

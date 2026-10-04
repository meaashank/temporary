###### Class com.amazonaws.services.s3.model.PutInstructionFileRequest (com.amazonaws.services.s3.model.PutInstructionFileRequest)
.class public final Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutInstructionFileRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;
.implements Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;


# instance fields
.field private final a:Lcom/amazonaws/services/s3/model/S3ObjectId;

.field private final b:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private f:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/lang/String;)V
    .registers 5

    .line 103
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    if-eqz p1, :cond_31

    .line 104
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/InstructionFileId;

    if-nez v0, :cond_31

    if-eqz p3, :cond_29

    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p2, :cond_21

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectId;

    .line 111
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->d:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->c:Ljava/util/Map;

    return-void

    .line 109
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encryption materials must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "suffix must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid s3 object id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/S3ObjectId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    if-eqz p1, :cond_35

    .line 80
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/InstructionFileId;

    if-nez v0, :cond_35

    if-eqz p3, :cond_2d

    .line 82
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectId;

    if-nez p2, :cond_1c

    .line 86
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_25

    :cond_1c
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 88
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 89
    :goto_25
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->c:Ljava/util/Map;

    .line 90
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-void

    .line 83
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "suffix must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid s3 object id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 5

    .line 381
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectId;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 382
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectId;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 385
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectId;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectId;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object p1

    .line 387
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->g:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->f:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 388
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 389
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->h:Ljava/lang/String;

    .line 394
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 395
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 396
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->c()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1

    .line 383
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "s3Object passed inconsistent with the instruction file being created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->f:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 2

    .line 347
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .registers 2

    .line 228
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .registers 2

    .line 372
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->h:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public i()Lcom/amazonaws/services/s3/model/S3ObjectId;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectId;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j_()Ljava/util/Map;
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

    .line 129
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->c:Ljava/util/Map;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .line 130
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->c:Ljava/util/Map;

    :goto_d
    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->f:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->h:Ljava/lang/String;

    return-object v0
.end method

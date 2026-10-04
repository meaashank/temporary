###### Class com.amazonaws.services.s3.model.InitiateMultipartUploadRequest (com.amazonaws.services.s3.model.InitiateMultipartUploadRequest)
.class public Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "InitiateMultipartUploadRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParamsProvider;
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private e:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private f:Lcom/amazonaws/services/s3/model/StorageClass;

.field private g:Ljava/lang/String;

.field private h:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private i:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 111
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->c:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->e:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->d:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 463
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->h:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v0, :cond_7

    goto :goto_f

    .line 464
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->i:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 426
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->i:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    if-nez v0, :cond_7

    goto :goto_f

    .line 427
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->h:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->f:Lcom/amazonaws/services/s3/model/StorageClass;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 286
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->d:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 381
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 478
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 445
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->f:Lcom/amazonaws/services/s3/model/StorageClass;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 519
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->j:Z

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 543
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->c(Z)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    if-eqz p1, :cond_9

    .line 338
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->f:Lcom/amazonaws/services/s3/model/StorageClass;

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->f:Lcom/amazonaws/services/s3/model/StorageClass;

    :goto_c
    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->d:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public m()Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->e:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public n()Lcom/amazonaws/services/s3/model/StorageClass;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->f:Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public o()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->h:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public r()Z
    .registers 2

    .line 499
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->j:Z

    return v0
.end method

.method public t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->i:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

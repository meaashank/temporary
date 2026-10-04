###### Class com.amazonaws.services.s3.model.UploadPartRequest (com.amazonaws.services.s3.model.UploadPartRequest)
.class public Lcom/amazonaws/services/s3/model/UploadPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UploadPartRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3DataSource;
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:J

.field private i:Ljava/lang/String;

.field private transient j:Ljava/io/InputStream;

.field private k:Ljava/io/File;

.field private l:J

.field private m:Z

.field private n:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 371
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->h:J

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 528
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->n:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->j:Ljava/io/InputStream;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 585
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->m:Z

    return-void
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 146
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b:I

    return-object p0
.end method

.method public b(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 3

    .line 383
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->h:J

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 630
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 470
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Ljava/io/File;)V

    return-object p0
.end method

.method public b(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 204
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 599
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Z)V

    return-object p0
.end method

.method public c(I)V
    .registers 2

    .line 154
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->c:I

    return-void
.end method

.method public c(J)V
    .registers 3

    .line 497
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->l:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 692
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o:Z

    return-void
.end method

.method public d(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 169
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->c:I

    return-object p0
.end method

.method public d(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 3

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->c(J)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 716
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->c(Z)V

    return-object p0
.end method

.method public e(I)V
    .registers 2

    .line 335
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->g:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public f(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 352
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->g:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->i:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b:I

    return v0
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->i:Ljava/lang/String;

    return-object p0
.end method

.method public i()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->c:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/io/File;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k:Ljava/io/File;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .registers 2

    .line 322
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->g:I

    return v0
.end method

.method public o()Ljava/io/InputStream;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->j:Ljava/io/InputStream;

    return-object v0
.end method

.method public p()J
    .registers 3

    .line 362
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->h:J

    return-wide v0
.end method

.method public q()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->n:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public s()J
    .registers 3

    .line 484
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->l:J

    return-wide v0
.end method

.method public t()Lcom/amazonaws/services/s3/model/ProgressListener;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    .line 542
    instance-of v1, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v1, :cond_f

    .line 543
    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->a()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Z
    .registers 2

    .line 575
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->m:Z

    return v0
.end method

.method public v()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public w()Z
    .registers 2

    .line 672
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o:Z

    return v0
.end method

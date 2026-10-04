###### Class com.amazonaws.services.s3.model.ListObjectsV2Request (com.amazonaws.services.s3.model.ListObjectsV2Request)
.class public Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListObjectsV2Request.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 366
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->g:Z

    return-void
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 260
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->a(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 380
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 456
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->i:Z

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 174
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Z)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 480
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->c(Z)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->e:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 304
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->f:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 342
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->h:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .registers 2

    .line 415
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->g:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->h:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->i:Z

    return v0
.end method

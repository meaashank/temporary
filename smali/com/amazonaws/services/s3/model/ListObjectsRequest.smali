###### Class com.amazonaws.services.s3.model.ListObjectsRequest (com.amazonaws.services.s3.model.ListObjectsRequest)
.class public Lcom/amazonaws/services/s3/model/ListObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListObjectsRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 148
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->c(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->e(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->g(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->e:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 476
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->g:Z

    return-void
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 2

    .line 392
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 2

    .line 192
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 2

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 2

    .line 235
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 2

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 2

    .line 345
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 2

    .line 435
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->g:Z

    return v0
.end method

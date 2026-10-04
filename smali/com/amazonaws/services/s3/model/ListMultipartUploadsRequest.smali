###### Class com.amazonaws.services.s3.model.ListMultipartUploadsRequest (com.amazonaws.services.s3.model.ListMultipartUploadsRequest)
.class public Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListMultipartUploadsRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .registers 2

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .registers 2

    .line 369
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .registers 2

    .line 412
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->g:Ljava/lang/String;

    return-object v0
.end method

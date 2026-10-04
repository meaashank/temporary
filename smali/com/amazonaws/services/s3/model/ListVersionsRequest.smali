###### Class com.amazonaws.services.s3.model.ListVersionsRequest (com.amazonaws.services.s3.model.ListVersionsRequest)
.class public Lcom/amazonaws/services/s3/model/ListVersionsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListVersionsRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 7

    .line 183
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 184
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->e(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->g(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->i(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->f:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 2

    .line 498
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 2

    .line 228
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 2

    .line 273
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 2

    .line 330
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 2

    .line 386
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 2

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Integer;
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->g:Ljava/lang/String;

    return-object v0
.end method

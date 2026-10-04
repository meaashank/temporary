###### Class com.amazonaws.services.s3.model.ListPartsRequest (com.amazonaws.services.s3.model.ListPartsRequest)
.class public Lcom/amazonaws/services/s3/model/ListPartsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListPartsRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->a:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->b:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->e:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 339
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->g:Z

    return-void
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .registers 2

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .registers 2

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .registers 2

    .line 297
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->g:Z

    return v0
.end method

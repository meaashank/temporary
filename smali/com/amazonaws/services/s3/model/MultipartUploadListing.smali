###### Class com.amazonaws.services.s3.model.MultipartUploadListing (com.amazonaws.services.s3.model.MultipartUploadListing)
.class public Lcom/amazonaws/services/s3/model/MultipartUploadListing;
.super Ljava/lang/Object;
.source "MultipartUploadListing.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 233
    iput p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;)V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->k:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 280
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->h:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->l:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->j:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .registers 2

    .line 222
    iget v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->f:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->g:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->c:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->d:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->h:Z

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->k:Ljava/util/List;

    if-nez v0, :cond_b

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->k:Ljava/util/List;

    .line 291
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->k:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->l:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->d:Ljava/lang/String;

    return-object v0
.end method

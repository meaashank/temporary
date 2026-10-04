###### Class com.amazonaws.services.s3.model.ListObjectsV2Result (com.amazonaws.services.s3.model.ListObjectsV2Result)
.class public Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
.super Ljava/lang/Object;
.source "ListObjectsV2Result.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->a:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 285
    iput p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->b:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 117
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->c:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 310
    iput p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->i:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->g:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->j:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->k:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->l:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->e:I

    return v0
.end method

.method public i()I
    .registers 2

    .line 299
    iget v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->a:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->b:Ljava/util/List;

    return-object v0
.end method

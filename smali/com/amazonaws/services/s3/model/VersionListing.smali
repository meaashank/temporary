###### Class com.amazonaws.services.s3.model.VersionListing (com.amazonaws.services.s3.model.VersionListing)
.class public Lcom/amazonaws/services/s3/model/VersionListing;
.super Ljava/lang/Object;
.source "VersionListing.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
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

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->a:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 301
    iput p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->j:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->a:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 417
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->f:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->g:Ljava/lang/String;

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

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->b:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->k:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->d:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .registers 2

    .line 288
    iget v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->j:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 389
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->e:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->l:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 403
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->f:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->l:Ljava/lang/String;

    return-object v0
.end method

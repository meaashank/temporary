###### Class com.amazonaws.services.s3.model.PartListing (com.amazonaws.services.s3.model.PartListing)
.class public Lcom/amazonaws/services/s3/model/PartListing;
.super Ljava/lang/Object;
.source "PartListing.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Lcom/amazonaws/services/s3/model/Owner;

.field private h:Lcom/amazonaws/services/s3/model/Owner;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/Integer;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Date;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->e:Ljava/lang/Integer;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/Owner;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->g:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->m:Ljava/util/Date;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;)V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->l:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 411
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->o:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->k:Ljava/lang/Integer;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/Owner;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->h:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 343
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->j:Z

    return-void
.end method

.method public c(I)V
    .registers 2

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->d:Ljava/lang/Integer;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    .line 406
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->o:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/amazonaws/services/s3/model/Owner;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->g:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->f:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/amazonaws/services/s3/model/Owner;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->h:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 401
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->n:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()Ljava/lang/Integer;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->j:Z

    return v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->l:Ljava/util/List;

    if-nez v0, :cond_b

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->l:Ljava/util/List;

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->l:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/Date;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->m:Ljava/util/Date;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->n:Ljava/lang/String;

    return-object v0
.end method

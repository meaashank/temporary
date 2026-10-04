###### Class com.amazonaws.services.s3.model.CopyPartRequest (com.amazonaws.services.s3.model.CopyPartRequest)
.class public Lcom/amazonaws/services/s3/model/CopyPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyPartRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Date;

.field private k:Ljava/util/Date;

.field private l:Ljava/lang/Long;

.field private m:Ljava/lang/Long;

.field private n:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private o:Lcom/amazonaws/services/s3/model/SSECustomerKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 197
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->b:I

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 815
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->n:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->l:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 700
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->j:Ljava/util/Date;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 212
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->b:I

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 829
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->l:Ljava/lang/Long;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 725
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;"
        }
    .end annotation

    .line 560
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public c(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 852
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->o:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public c(Ljava/lang/Long;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->m:Ljava/lang/Long;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 767
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->k:Ljava/util/Date;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public d(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 866
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public d(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 509
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->m:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 792
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c(Ljava/util/Date;)V

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;"
        }
    .end annotation

    .line 634
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c(Ljava/util/List;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->b:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 409
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 2

    .line 448
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/Long;
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->l:Ljava/lang/Long;

    return-object v0
.end method

.method public p()Ljava/lang/Long;
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->m:Ljava/lang/Long;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/util/Date;
    .registers 2

    .line 678
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->j:Ljava/util/Date;

    return-object v0
.end method

.method public t()Ljava/util/Date;
    .registers 2

    .line 745
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->k:Ljava/util/Date;

    return-object v0
.end method

.method public u()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->n:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public v()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 841
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->o:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

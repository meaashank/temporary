###### Class com.amazonaws.services.s3.model.GeneratePresignedUrlRequest (com.amazonaws.services.s3.model.GeneratePresignedUrlRequest)
.class public Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GeneratePresignedUrlRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/HttpMethod;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Date;

.field private h:Z

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private l:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 202
    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V
    .registers 5

    .line 224
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->i:Ljava/util/Map;

    .line 225
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->b:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->c:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a:Lcom/amazonaws/HttpMethod;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/HttpMethod;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a:Lcom/amazonaws/HttpMethod;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->k:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V
    .registers 2

    .line 179
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->l:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->g:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 671
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->h:Z

    return-void
.end method

.method public b(Lcom/amazonaws/HttpMethod;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 271
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Lcom/amazonaws/HttpMethod;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 518
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 624
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 422
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 678
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j:Ljava/util/Map;

    .line 483
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    .line 484
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public c(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 640
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->l:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    goto :goto_20

    .line 641
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 643
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->e(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->l:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    :goto_20
    return-void

    .line 645
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently the only supported Server Side Encryption algorithm is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->m:Ljava/lang/String;

    return-void
.end method

.method public d(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 655
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->c(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 305
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 339
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->n:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public j()Lcom/amazonaws/HttpMethod;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a:Lcom/amazonaws/HttpMethod;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 553
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 577
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ljava/util/Date;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->g:Ljava/util/Date;

    return-object v0
.end method

.method public o()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->i:Ljava/util/Map;

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->l:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public r()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->k:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .registers 2

    .line 664
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->h:Z

    return v0
.end method

.method public v()V
    .registers 4

    .line 688
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->b:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 692
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a:Lcom/amazonaws/HttpMethod;

    if-eqz v0, :cond_52

    .line 696
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->l:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v0, :cond_25

    .line 697
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->m:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 700
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->n:Ljava/lang/String;

    if-nez v0, :cond_15

    goto :goto_51

    .line 701
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KMS CMK is not applicable for SSE-C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either SSE or SSE-C can be specified but not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_25
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->n:Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 704
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_51

    .line 705
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For KMS server side encryption, the SSE algorithm must be set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    :goto_51
    return-void

    .line 693
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The HTTP method request parameter must be specified when generating a pre-signed URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The bucket name parameter must be specified when generating a pre-signed URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

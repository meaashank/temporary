###### Class com.amazonaws.services.s3.model.CopyObjectRequest (com.amazonaws.services.s3.model.CopyObjectRequest)
.class public Lcom/amazonaws/services/s3/model/CopyObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;
.implements Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParamsProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private h:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private i:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Date;

.field private m:Ljava/util/Date;

.field private n:Ljava/lang/String;

.field private o:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private p:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private q:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private r:Z

.field private s:Lcom/amazonaws/services/s3/model/ObjectTagging;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 201
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k:Ljava/util/List;

    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->b:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->c:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->d:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->i:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->h:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->g:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .registers 2

    .line 1147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->s:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1051
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->p:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v0, :cond_7

    goto :goto_f

    .line 1052
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1055
    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->q:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 982
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->o:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 2

    .line 528
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 837
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l:Ljava/util/Date;

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

    .line 707
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 1106
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->r:Z

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 616
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 586
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 660
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 1158
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 1066
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 996
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 547
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 241
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 862
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 1130
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a(Z)V

    return-object p0
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

    .line 772
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k:Ljava/util/List;

    return-void
.end method

.method public c(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 1019
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->p:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 904
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->m:Ljava/util/Date;

    return-void
.end method

.method public d(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 1033
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->c(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 280
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 929
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->c(Ljava/util/Date;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 364
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 404
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 443
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 507
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 3

    .line 729
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->h:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 3

    .line 795
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public o()Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->i:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 940
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->n:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .registers 2

    .line 959
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->n:Ljava/lang/String;

    return-object p0
.end method

.method public p()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->g:Lcom/amazonaws/services/s3/model/ObjectMetadata;

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

    .line 685
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j:Ljava/util/List;

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

    .line 751
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/util/Date;
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l:Ljava/util/Date;

    return-object v0
.end method

.method public t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .registers 2

    .line 1043
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->q:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

.method public u()Ljava/util/Date;
    .registers 2

    .line 882
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->m:Ljava/util/Date;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .line 947
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->n:Ljava/lang/String;

    return-object v0
.end method

.method public w()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 971
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->o:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public x()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 1008
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->p:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public y()Z
    .registers 2

    .line 1086
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->r:Z

    return v0
.end method

.method public z()Lcom/amazonaws/services/s3/model/ObjectTagging;
    .registers 2

    .line 1138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->s:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-object v0
.end method

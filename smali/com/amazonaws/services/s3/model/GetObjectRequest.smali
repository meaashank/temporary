###### Class com.amazonaws.services.s3.model.GetObjectRequest (com.amazonaws.services.s3.model.GetObjectRequest)
.class public Lcom/amazonaws/services/s3/model/GetObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

.field private b:[J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Date;

.field private g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private h:Lcom/amazonaws/event/ProgressListener;

.field private i:Z

.field private j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .registers 3

    .line 155
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->d:Ljava/util/List;

    .line 156
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 149
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->d:Ljava/util/List;

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->e(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->g(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 176
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->d:Ljava/util/List;

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 178
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->e(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 181
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->i:Z

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5

    const-wide v0, 0x7ffffffffffffffeL

    .line 438
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(JJ)V

    return-void
.end method

.method public a(JJ)V
    .registers 7

    const/4 v0, 0x2

    .line 413
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->b:[J

    return-void
.end method

.method public a(Lcom/amazonaws/event/ProgressListener;)V
    .registers 2

    .line 844
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->h:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .registers 2

    .line 767
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .registers 3

    .line 1042
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 950
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 1002
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->e:Ljava/util/Date;

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

    .line 538
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic b(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 3

    .line 501
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(J)V

    return-object p0
.end method

.method public b(JJ)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 5

    .line 470
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(JJ)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 780
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/S3ObjectId;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 1049
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 966
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 1026
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 686
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Ljava/util/Date;)V

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

    .line 600
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->d:Ljava/util/List;

    return-void
.end method

.method public c(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 867
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(Lcom/amazonaws/event/ProgressListener;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 723
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Ljava/util/Date;

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 908
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->i:Z

    return-void
.end method

.method public d()Lcom/amazonaws/event/ProgressListener;
    .registers 2

    .line 855
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->h:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 224
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 747
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c(Ljava/util/Date;)V

    return-object p0
.end method

.method public d(Z)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 932
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c(Z)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 268
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c(Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 2

    .line 356
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()[J
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->b:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->b:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_e
    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->c:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->d:Ljava/util/List;

    return-object v0
.end method

.method public q()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public r()Ljava/util/Date;
    .registers 2

    .line 643
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->e:Ljava/util/Date;

    return-object v0
.end method

.method public s()Ljava/util/Date;
    .registers 2

    .line 703
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Ljava/util/Date;

    return-object v0
.end method

.method public t()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 757
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public u()Lcom/amazonaws/services/s3/model/ProgressListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->h:Lcom/amazonaws/event/ProgressListener;

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v0, :cond_f

    .line 811
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->h:Lcom/amazonaws/event/ProgressListener;

    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->a()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Z
    .registers 2

    .line 888
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->i:Z

    return v0
.end method

.method public w()Ljava/lang/Integer;
    .registers 2

    .line 981
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public x()Lcom/amazonaws/services/s3/model/S3ObjectId;
    .registers 2

    .line 1035
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->d()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    return-object v0
.end method

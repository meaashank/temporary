###### Class com.amazonaws.services.s3.model.AbstractPutObjectRequest (com.amazonaws.services.s3.model.AbstractPutObjectRequest)
.class public abstract Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AbstractPutObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3DataSource;
.implements Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParamsProvider;
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private transient d:Ljava/io/InputStream;

.field private e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private f:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private g:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private k:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private l:Lcom/amazonaws/services/s3/model/ObjectTagging;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 114
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->c:Ljava/io/File;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 5

    .line 159
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->d:Ljava/io/InputStream;

    .line 163
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 814
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 815
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 816
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->n()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 817
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->m()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 818
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_27

    .line 819
    :cond_23
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->x()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    :goto_27
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 820
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 821
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 822
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 823
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 2

    .line 554
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->g:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 2

    .line 516
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->f:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .registers 2

    .line 709
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->l:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 786
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v0, :cond_7

    goto :goto_f

    .line 787
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 790
    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 679
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    if-nez v0, :cond_7

    goto :goto_f

    .line 680
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 683
    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 2

    .line 337
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->c:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 2

    .line 606
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->d:Ljava/io/InputStream;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/CannedAccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")TT;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ObjectTagging;",
            ")TT;"
        }
    .end annotation

    .line 713
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ProgressListener;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")TT;"
        }
    .end annotation

    .line 801
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")TT;"
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/StorageClass;",
            ")TT;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public b(Ljava/io/File;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Ljava/io/File;)V

    return-object p0
.end method

.method public b(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 629
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->h:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic g()Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 641
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->i:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->i:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/io/File;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->c:Ljava/io/File;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public m()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->f:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public n()Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 2

    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->g:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public o()Ljava/io/InputStream;
    .registers 2

    .line 588
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public r()Lcom/amazonaws/services/s3/model/ObjectTagging;
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->l:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-object v0
.end method

.method public s()Lcom/amazonaws/services/s3/model/ProgressListener;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    .line 745
    instance-of v1, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v1, :cond_f

    .line 746
    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->a()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

.method public u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 809
    invoke-super {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->g()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    return-object v0
.end method

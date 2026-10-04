###### Class com.amazonaws.services.s3.model.CompleteMultipartUploadRequest (com.amazonaws.services.s3.model.CompleteMultipartUploadRequest)
.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CompleteMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->d:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->a:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->b:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->c:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 245
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->d:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_23
    return-object p0
.end method

.method public varargs a([Lcom/amazonaws/services/s3/model/UploadPartResult;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .registers 8

    .line 227
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    .line 228
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->d:Ljava/util/List;

    new-instance v4, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartResult;->a()I

    move-result v5

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->d:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 287
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->e:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->d:Ljava/util/List;

    return-object v0
.end method

.method public l()Z
    .registers 2

    .line 267
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->e:Z

    return v0
.end method

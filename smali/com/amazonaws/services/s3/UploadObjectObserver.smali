###### Class com.amazonaws.services.s3.UploadObjectObserver (com.amazonaws.services.s3.UploadObjectObserver)
.class public Lcom/amazonaws/services/s3/UploadObjectObserver;
.super Ljava/lang/Object;
.source "UploadObjectObserver.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

.field private e:Lcom/amazonaws/services/s3/AmazonS3;

.field private f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/RequestClientOptions;->b(Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Lcom/amazonaws/services/s3/internal/S3DirectSpi;Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ExecutorService;)Lcom/amazonaws/services/s3/UploadObjectObserver;
    .registers 5

    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 84
    iput-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->d:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    .line 85
    iput-object p3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->e:Lcom/amazonaws/services/s3/AmazonS3;

    .line 86
    iput-object p4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->f:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->e:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 185
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 183
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .registers 6

    .line 93
    new-instance v0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    .line 94
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 95
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->j_()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->g(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->e(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->n()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->m()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->c()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    return-object p1
.end method

.method protected a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 6

    .line 219
    new-instance v0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 220
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 222
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 224
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p2

    .line 225
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    .line 226
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 227
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->A()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->d:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/S3DirectSpi;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 6

    .line 195
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/UploadObjectObserver;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    .line 196
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_8

    .line 198
    :cond_19
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 200
    :try_start_1d
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->e:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 201
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_36

    goto :goto_55

    :catch_36
    move-exception v0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort multi-part upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V
    .registers 7

    .line 144
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a()Ljava/io/File;

    move-result-object v0

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d()Lcom/amazonaws/services/s3/OnFileDelete;

    move-result-object p1

    .line 148
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 149
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/amazonaws/services/s3/UploadObjectObserver$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/amazonaws/services/s3/UploadObjectObserver$1;-><init>(Lcom/amazonaws/services/s3/UploadObjectObserver;Lcom/amazonaws/services/s3/model/UploadPartRequest;Ljava/io/File;Lcom/amazonaws/services/s3/OnFileDelete;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Ljava/lang/String;
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->e:Lcom/amazonaws/services/s3/AmazonS3;

    .line 118
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    .line 120
    iget-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    return-object p1
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->a:Ljava/util/List;

    return-object v0
.end method

.method protected c()Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Lcom/amazonaws/services/s3/internal/S3DirectSpi;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->d:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    return-object v0
.end method

.method protected f()Lcom/amazonaws/services/s3/AmazonS3;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->e:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method protected g()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.UploadObjectObserver.AnonymousClass1 (com.amazonaws.services.s3.UploadObjectObserver$1)
.class Lcom/amazonaws/services/s3/UploadObjectObserver$1;
.super Ljava/lang/Object;
.source "UploadObjectObserver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/services/s3/model/UploadPartResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/amazonaws/services/s3/OnFileDelete;

.field final synthetic d:Lcom/amazonaws/services/s3/UploadObjectObserver;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/UploadObjectObserver;Lcom/amazonaws/services/s3/model/UploadPartRequest;Ljava/io/File;Lcom/amazonaws/services/s3/OnFileDelete;)V
    .registers 5

    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->d:Lcom/amazonaws/services/s3/UploadObjectObserver;

    iput-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    iput-object p3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 5

    const/4 v0, 0x0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->d:Lcom/amazonaws/services/s3/UploadObjectObserver;

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3f

    .line 157
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_35

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring failure to delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which has already been uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    goto :goto_3e

    .line 162
    :cond_35
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    if-eqz v2, :cond_3e

    .line 163
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    invoke-interface {v2, v0}, Lcom/amazonaws/services/s3/OnFileDelete;->a(Lcom/amazonaws/services/s3/internal/FileDeletionEvent;)V

    :cond_3e
    :goto_3e
    return-object v1

    :catchall_3f
    move-exception v1

    .line 157
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 162
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    if-eqz v2, :cond_75

    .line 163
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    invoke-interface {v2, v0}, Lcom/amazonaws/services/s3/OnFileDelete;->a(Lcom/amazonaws/services/s3/internal/FileDeletionEvent;)V

    goto :goto_75

    .line 158
    :cond_52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring failure to delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which has already been uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 165
    :cond_75
    :goto_75
    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a()Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v0

    return-object v0
.end method

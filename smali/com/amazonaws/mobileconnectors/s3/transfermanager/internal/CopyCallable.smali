###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyCallable (com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyCallable)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;
.super Ljava/lang/Object;
.source "CopyCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Lcom/amazonaws/services/s3/AmazonS3;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

.field private d:Ljava/lang/String;

.field private final e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private final f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

.field private final h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->g:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/event/ProgressListenerChain;)V
    .registers 8

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->i:Ljava/util/List;

    .line 99
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->b()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 100
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 101
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->b:Ljava/util/concurrent/ExecutorService;

    .line 102
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 103
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 105
    invoke-static {p6}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->j:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 106
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    return-void
.end method

.method private a(J)J
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 202
    invoke-static {v0, v1, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;J)J

    move-result-wide p1

    .line 204
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->g:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated optimal part size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-wide p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Ljava/lang/String;
    .registers 5

    .line 227
    new-instance v0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 228
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->n()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->o()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 235
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->o()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 238
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 240
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 243
    :cond_33
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->x()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 245
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->x()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 248
    :cond_40
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->p()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    if-nez p1, :cond_4b

    .line 250
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 252
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 253
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f(Ljava/lang/String;)V

    .line 256
    :cond_5a
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 258
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p0, v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 260
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->c()Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->g:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiated new multipart upload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-object p1
.end method

.method private a(I)V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->j:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    if-nez v0, :cond_5

    return-void

    .line 270
    :cond_5
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->a(I)V

    .line 272
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->j:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;)V
    .registers 7

    .line 213
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 214
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_25

    .line 217
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->b()Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_25
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "TransferManager has been shutdown"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 8

    .line 277
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x9

    .line 280
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "x-amz-cek-alg"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "x-amz-iv"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "x-amz-key"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "x-amz-key-v2"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "x-amz-wrap-alg"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "x-amz-tag-len"

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const-string v2, "x-amz-matdesc"

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-string v2, "x-amz-unencrypted-content-length"

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const-string v2, "x-amz-unencrypted-content-md5"

    const/16 v4, 0x8

    aput-object v2, v1, v4

    if-eqz p1, :cond_59

    if-nez v0, :cond_46

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/util/Map;)V

    .line 296
    :cond_46
    array-length p2, v1

    :goto_47
    if-ge v3, p2, :cond_59

    aget-object v2, v1, v3

    .line 297
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_56

    .line 299
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_59
    return-void
.end method

.method private e()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->a(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->b(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 153
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->c(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->d(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->e(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method private f()V
    .registers 12

    .line 170
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l()Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->d:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a(J)J

    move-result-wide v7

    .line 178
    :try_start_1e
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 180
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide v9

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;-><init>(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Ljava/lang/String;JJ)V

    .line 181
    invoke-direct {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v2

    const/16 v3, 0x8

    .line 183
    invoke-direct {p0, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a(I)V

    .line 185
    :try_start_38
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v4, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->d:Ljava/lang/String;

    invoke-direct {v4, v0, v1, v5}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_60

    :catch_45
    move-exception v0

    .line 188
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->g:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to abort multipart upload, you may need to manually remove uploaded parts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-interface {v1, v3, v0}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    :goto_60
    throw v2
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->i:Ljava/util/List;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->e:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 124
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->d()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->d()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    .line 131
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->a(I)V

    .line 132
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->f()V

    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_16
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->e()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0

    return-object v0
.end method

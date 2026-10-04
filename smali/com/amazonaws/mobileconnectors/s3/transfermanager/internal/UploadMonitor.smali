###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor (com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;
.super Ljava/lang/Object;
.source "UploadMonitor.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Lcom/amazonaws/services/s3/AmazonS3;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

.field private final g:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private final h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

.field private final i:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

.field private j:Ljava/lang/String;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->e:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;)V
    .registers 8

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->l:Z

    const/16 v0, 0x1388

    .line 99
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->n:I

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->b()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 120
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 122
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    .line 123
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->b:Ljava/util/concurrent/ExecutorService;

    .line 124
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->c:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 126
    invoke-static {p6}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->g:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 127
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    .line 129
    invoke-interface {p3, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private a(I)V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->g:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    if-nez v0, :cond_5

    return-void

    .line 219
    :cond_5
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 220
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->a(I)V

    .line 221
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->g:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;Ljava/util/concurrent/Future;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->m:Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 86
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 94
    :try_start_2
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->l:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 95
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    .line 93
    monitor-exit p0

    throw v0
.end method

.method private f()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 161
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    .line 162
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i()V

    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_1d
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 168
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_23

    .line 169
    :cond_36
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 173
    :cond_3c
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->e()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 185
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h()V

    goto :goto_22

    .line 187
    :cond_c
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->j:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i()V

    :goto_22
    return-object v0
.end method

.method private h()V
    .registers 3

    .line 196
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->e()V

    .line 197
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 201
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    .line 202
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(I)V

    :cond_16
    return-void
.end method

.method private i()V
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;)V

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->n:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .registers 7

    .line 228
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->c:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 230
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->c:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 231
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 229
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h()V

    .line 235
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;-><init>()V

    .line 236
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->a(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->b(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->c(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method private k()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 249
    :try_start_20
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_14

    :catch_28
    move-exception v0

    .line 251
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to upload part: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4c
    return-object v0
.end method

.method private l()V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->m:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 289
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 290
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_c

    .line 292
    :cond_1c
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method a(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    .line 269
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->f()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    move-result-object v0

    if-nez v0, :cond_22

    .line 271
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    .line 272
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v0

    if-eqz p1, :cond_1c

    .line 274
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->l()V

    .line 275
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->g()V

    .line 277
    :cond_1c
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V

    return-object p1

    .line 279
    :cond_22
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->l()V

    .line 280
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;Ljava/lang/Object;)V

    return-object p1
.end method

.method public declared-synchronized a()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->m:Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .registers 4

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->j:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 140
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->g()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0

    .line 142
    :cond_9
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->f()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0
    :try_end_d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_d} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    const/16 v1, 0x8

    .line 150
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(I)V

    .line 151
    throw v0

    .line 145
    :catch_1c
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    const/16 v0, 0x10

    .line 146
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(I)V

    .line 147
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Upload canceled"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->c()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 2

    .line 302
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->l()V

    .line 303
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->h:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->g()V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor$1)
.class Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;
.super Ljava/lang/Object;
.source "UploadMonitor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 207
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;->a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

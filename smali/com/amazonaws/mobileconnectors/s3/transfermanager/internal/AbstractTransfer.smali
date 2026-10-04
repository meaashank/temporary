###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.AbstractTransfer (com.amazonaws.mobileconnectors.s3.transfermanager.internal.AbstractTransfer)
.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.super Ljava/lang/Object;
.source "AbstractTransfer.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# instance fields
.field protected volatile a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

.field protected b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

.field protected final c:Lcom/amazonaws/event/ProgressListenerChain;

.field protected final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V
    .registers 5

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->d:Ljava/util/Collection;

    .line 65
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->f:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->c:Lcom/amazonaws/event/ProgressListenerChain;

    .line 67
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->e:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    .line 68
    invoke-virtual {p0, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->c:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(IJ)V

    invoke-static {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public declared-synchronized a(Lcom/amazonaws/event/ProgressListener;)V
    .registers 3

    monitor-enter p0

    .line 185
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->c:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->a(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 186
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    .line 184
    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .registers 4

    .line 160
    monitor-enter p0

    .line 161
    :try_start_1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 162
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    .line 163
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .line 164
    invoke-interface {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_a

    :cond_1a
    return-void

    :catchall_1b
    move-exception p1

    .line 162
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    return-void
.end method

.method public declared-synchronized a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    .line 224
    :try_start_3
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception p1

    .line 222
    monitor-exit p0

    throw p1

    .line 225
    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->c:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerChain;->a(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 207
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 205
    monitor-exit p0

    throw p1
.end method

.method protected a(Ljava/util/concurrent/ExecutionException;)V
    .registers 2

    .line 269
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object p1

    throw p1
.end method

.method protected b(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;
    .registers 5

    .line 281
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 282
    instance-of v0, p1, Lcom/amazonaws/AmazonClientException;

    if-eqz v0, :cond_b

    .line 283
    check-cast p1, Lcom/amazonaws/AmazonClientException;

    return-object p1

    .line 284
    :cond_b
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to complete transfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public declared-synchronized b(Lcom/amazonaws/event/ProgressListener;)V
    .registers 3

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->c:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->b(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 197
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    .line 195
    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .line 173
    invoke-interface {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public declared-synchronized b(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    .line 232
    :try_start_3
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception p1

    .line 230
    monitor-exit p0

    throw p1

    .line 233
    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->c:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerChain;->b(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 217
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 215
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()Z
    .registers 3

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_19

    if-ne v0, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    monitor-exit p0

    return v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 3

    const/4 v0, 0x0

    .line 101
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_1a

    .line 102
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_1

    :catch_16
    move-exception v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a(Ljava/util/concurrent/ExecutionException;)V

    :cond_1a
    return-void
.end method

.method public h()Lcom/amazonaws/AmazonClientException;
    .registers 2

    .line 126
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->b()Z

    move-result v0

    if-nez v0, :cond_12

    .line 127
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_12
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1b} :catch_1d

    const/4 v0, 0x0

    return-object v0

    :catch_1d
    move-exception v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->f:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    .registers 2

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->e:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    return-object v0
.end method

.method public l()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    return-object v0
.end method

###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.DownloadImpl (com.amazonaws.mobileconnectors.s3.transfermanager.internal.DownloadImpl)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "DownloadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;


# instance fields
.field e:Lcom/amazonaws/services/s3/model/S3Object;

.field private final f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)V
    .registers 8

    .line 44
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 45
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->e:Lcom/amazonaws/services/s3/model/S3Object;

    .line 46
    invoke-direct {p0, p6, p7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    .line 47
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    invoke-static {p3, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->a(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
    .registers 12

    .line 137
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    if-nez v0, :cond_29

    .line 138
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    .line 139
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->m()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->n()[J

    move-result-object v5

    .line 142
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->t()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v6

    .line 143
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->v()Z

    move-result v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    return-object v0

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->e:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .registers 3

    .line 124
    invoke-super {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 126
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p1, v0, :cond_b

    const/4 p1, 0x4

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->a(I)V

    :cond_b
    return-void
.end method

.method public declared-synchronized a(Lcom/amazonaws/services/s3/model/S3Object;)V
    .registers 2

    monitor-enter p0

    .line 115
    :try_start_1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->e:Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 116
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    .line 114
    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->e:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->e:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 91
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->e:Lcom/amazonaws/services/s3/model/S3Object;

    if-eqz v0, :cond_18

    .line 92
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->e:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->g()V

    .line 94
    :cond_18
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 95
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    .line 88
    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
    .registers 4

    .line 155
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 158
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    if-eqz v1, :cond_15

    .line 162
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->f:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    return-object v0

    .line 159
    :cond_15
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;

    invoke-static {v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V

    throw v1
.end method

.method public declared-synchronized m()V
    .registers 3

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 106
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 107
    :try_start_c
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 108
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 109
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    .line 108
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    .line 103
    monitor-exit p0

    throw v0
.end method

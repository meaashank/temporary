###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadImpl (com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadImpl)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "UploadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    return-void
.end method

.method private b(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    .line 89
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->a(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->b(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .registers 4

    const/4 v0, 0x0

    move-object v1, v0

    .line 58
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    return-object v1

    .line 59
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_2

    :catch_1b
    move-exception v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->a(Ljava/util/concurrent/ExecutionException;)V

    return-object v0
.end method

.method public b()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
    .registers 4

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->b(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-ne v1, v2, :cond_14

    .line 79
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    return-object v0

    .line 77
    :cond_14
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V

    throw v1
.end method

.method public c()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    .line 110
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->d()V

    return-void
.end method

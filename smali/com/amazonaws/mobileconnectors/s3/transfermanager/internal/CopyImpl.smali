###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyImpl (com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyImpl)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "CopyImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .registers 4

    const/4 v0, 0x0

    move-object v1, v0

    .line 59
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    return-object v1

    .line 60
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_2

    :catch_1b
    move-exception v1

    .line 65
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->a(Ljava/util/concurrent/ExecutionException;)V

    return-object v0
.end method

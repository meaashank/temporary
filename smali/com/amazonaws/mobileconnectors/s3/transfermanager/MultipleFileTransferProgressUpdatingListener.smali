###### Class com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileTransferProgressUpdatingListener (com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileTransferProgressUpdatingListener)
.class final Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;
.source "MultipleFileTransferProgressUpdatingListener.java"


# instance fields
.field private final a:Lcom/amazonaws/event/ProgressListenerChain;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    .line 35
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;->a:Lcom/amazonaws/event/ProgressListenerChain;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .registers 3

    .line 40
    invoke-super {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 41
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;->a:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

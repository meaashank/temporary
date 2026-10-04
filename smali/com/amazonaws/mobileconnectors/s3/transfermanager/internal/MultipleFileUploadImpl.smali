###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileUploadImpl (com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileUploadImpl)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
.source "MultipleFileUploadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;",
        ">;",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;",
            "Lcom/amazonaws/event/ProgressListenerChain;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/util/Collection;)V

    .line 41
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->f:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->e:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 77
    :cond_9
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->g()V

    return-void
.end method

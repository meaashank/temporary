###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressListenerChain (com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressListenerChain)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;
.super Lcom/amazonaws/event/ProgressListenerChain;
.source "S3ProgressListenerChain.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;


# direct methods
.method public varargs constructor <init>([Lcom/amazonaws/event/ProgressListener;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V
    .registers 5

    .line 38
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/event/ProgressListener;

    .line 39
    instance-of v2, v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    if-eqz v2, :cond_8

    .line 40
    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    .line 41
    invoke-interface {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V

    goto :goto_8

    :cond_1e
    return-void
.end method

###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressPublisher (com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressPublisher)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;
.super Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.source "S3ProgressPublisher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/event/ProgressListener;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_17

    .line 40
    instance-of v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    if-nez v0, :cond_7

    goto :goto_17

    .line 43
    :cond_7
    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    .line 44
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressPublisher.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressPublisher$1)
.class final Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;
.super Ljava/lang/Object;
.source "S3ProgressPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->a(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V

    return-void
.end method

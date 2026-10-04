###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferProgressUpdatingListener (com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferProgressUpdatingListener)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;
.super Ljava/lang/Object;
.source "TransferProgressUpdatingListener.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .registers 6

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    return-void

    .line 35
    :cond_b
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a(J)V

    return-void
.end method

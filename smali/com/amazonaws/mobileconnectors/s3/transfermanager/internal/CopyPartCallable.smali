###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyPartCallable (com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyPartCallable)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;
.super Ljava/lang/Object;
.source "CopyPartCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/services/s3/model/PartETag;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/services/s3/AmazonS3;

.field private final b:Lcom/amazonaws/services/s3/model/CopyPartRequest;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 40
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->b:Lcom/amazonaws/services/s3/model/CopyPartRequest;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/PartETag;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->b:Lcom/amazonaws/services/s3/model/CopyPartRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyPartResult;->c()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->a()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method

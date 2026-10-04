###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadPartCallable (com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadPartCallable)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;
.super Ljava/lang/Object;
.source "UploadPartCallable.java"

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

.field private final b:Lcom/amazonaws/services/s3/model/UploadPartRequest;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/UploadPartRequest;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 30
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;->b:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/PartETag;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;->a:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;->b:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->d()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;->a()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method

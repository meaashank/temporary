###### Class com.amazonaws.services.s3.internal.CompleteMultipartUploadRetryCondition (com.amazonaws.services.s3.internal.CompleteMultipartUploadRetryCondition)
.class public Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;
.super Ljava/lang/Object;
.source "CompleteMultipartUploadRetryCondition.java"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# static fields
.field private static final b:I = 0x3

.field private static final c:Ljava/lang/String; = "InternalError"

.field private static final d:Ljava/lang/String; = "Please try again."


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    .line 38
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z
    .registers 5

    .line 53
    instance-of p1, p2, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 54
    check-cast p2, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->a(Lcom/amazonaws/services/s3/model/AmazonS3Exception;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget p1, p0, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->e:I

    if-ge p3, p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :cond_13
    return v0
.end method

.method a(Lcom/amazonaws/services/s3/model/AmazonS3Exception;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_2a

    .line 65
    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InternalError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->f()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Please try again."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0

    :cond_2a
    :goto_2a
    return v0
.end method

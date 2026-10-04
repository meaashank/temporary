###### Class com.amazonaws.retry.RetryUtils (com.amazonaws.retry.RetryUtils)
.class public Lcom/amazonaws/retry/RetryUtils;
.super Ljava/lang/Object;
.source "RetryUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazonaws/AmazonServiceException;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 38
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Throttling"

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "ThrottlingException"

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "ProvisionedThroughputExceededException"

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .registers 3

    .line 83
    instance-of v0, p0, Lcom/amazonaws/AbortedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 86
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 87
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 94
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_1c

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1d

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-nez p0, :cond_1d

    :cond_1c
    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/amazonaws/AmazonServiceException;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "Request entity too large"

    .line 55
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/amazonaws/AmazonServiceException;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RequestTimeTooSkewed"

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "RequestExpired"

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "InvalidSignatureException"

    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "SignatureDoesNotMatch"

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_28
    const/4 v0, 0x1

    :cond_29
    return v0
.end method

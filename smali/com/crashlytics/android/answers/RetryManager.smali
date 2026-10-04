###### Class com.crashlytics.android.answers.RetryManager (com.crashlytics.android.answers.RetryManager)
.class Lcom/crashlytics/android/answers/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# static fields
.field private static final NANOSECONDS_IN_MS:J = 0xf4240L


# instance fields
.field lastRetry:J

.field private retryState:Lio/fabric/sdk/android/services/concurrency/internal/f;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/concurrency/internal/f;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 26
    iput-object p1, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState:Lio/fabric/sdk/android/services/concurrency/internal/f;

    return-void

    .line 24
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "retryState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canRetry(J)Z
    .registers 7

    .line 33
    iget-object v0, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState:Lio/fabric/sdk/android/services/concurrency/internal/f;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/f;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 34
    iget-wide v2, p0, Lcom/crashlytics/android/answers/RetryManager;->lastRetry:J

    sub-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public recordRetry(J)V
    .registers 3

    .line 41
    iput-wide p1, p0, Lcom/crashlytics/android/answers/RetryManager;->lastRetry:J

    .line 42
    iget-object p1, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState:Lio/fabric/sdk/android/services/concurrency/internal/f;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/concurrency/internal/f;->e()Lio/fabric/sdk/android/services/concurrency/internal/f;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState:Lio/fabric/sdk/android/services/concurrency/internal/f;

    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/crashlytics/android/answers/RetryManager;->lastRetry:J

    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState:Lio/fabric/sdk/android/services/concurrency/internal/f;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/f;->f()Lio/fabric/sdk/android/services/concurrency/internal/f;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState:Lio/fabric/sdk/android/services/concurrency/internal/f;

    return-void
.end method

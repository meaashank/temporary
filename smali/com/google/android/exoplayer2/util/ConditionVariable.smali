###### Class com.google.android.exoplayer2.util.ConditionVariable (com.google.android.exoplayer2.util.ConditionVariable)
.class public final Lcom/google/android/exoplayer2/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .registers 2

    monitor-enter p0

    .line 57
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_9

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 60
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    .line 56
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized block(J)Z
    .registers 6

    monitor-enter p0

    .line 70
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    add-long/2addr p1, v0

    .line 72
    :goto_7
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v2, :cond_19

    cmp-long v2, v0, p1

    if-gez v2, :cond_19

    sub-long v0, p1, v0

    .line 73
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_7

    .line 76
    :cond_19
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return p1

    :catchall_1d
    move-exception p1

    .line 69
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()Z
    .registers 3

    monitor-enter p0

    .line 46
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 48
    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    .line 45
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Z
    .registers 2

    monitor-enter p0

    .line 32
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 33
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 35
    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 37
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    .line 31
    monitor-exit p0

    throw v0
.end method

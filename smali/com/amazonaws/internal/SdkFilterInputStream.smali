###### Class com.amazonaws.internal.SdkFilterInputStream (com.amazonaws.internal.SdkFilterInputStream)
.class public Lcom/amazonaws/internal/SdkFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "SdkFilterInputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    .line 85
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 91
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    return-void
.end method

.method public d()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/amazonaws/internal/MetricAware;

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 37
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->d()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()V
    .registers 2

    .line 49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 50
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->g()V

    .line 51
    new-instance v0, Lcom/amazonaws/AbortedException;

    invoke-direct {v0}, Lcom/amazonaws/AbortedException;-><init>()V

    throw v0
.end method

.method protected g()V
    .registers 1

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    .line 97
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 98
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    .line 109
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    .line 67
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    .line 72
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    .line 73
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 102
    :try_start_1
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    .line 103
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 104
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    .line 101
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->f()V

    .line 79
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

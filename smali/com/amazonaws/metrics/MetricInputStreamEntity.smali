###### Class com.amazonaws.metrics.MetricInputStreamEntity (com.amazonaws.metrics.MetricInputStreamEntity)
.class public Lcom/amazonaws/metrics/MetricInputStreamEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "MetricInputStreamEntity.java"


# static fields
.field private static final a:I = 0x800


# instance fields
.field private final b:Lcom/amazonaws/metrics/ByteThroughputHelper;


# direct methods
.method public constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;J)V
    .registers 5

    .line 44
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 45
    new-instance p2, Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-direct {p2, p1}, Lcom/amazonaws/metrics/ByteThroughputHelper;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V

    iput-object p2, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->b:Lcom/amazonaws/metrics/ByteThroughputHelper;

    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .registers 14

    if-eqz p1, :cond_61

    .line 72
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->getContentLength()J

    move-result-wide v1

    const/16 v3, 0x800

    .line 76
    :try_start_c
    new-array v3, v3, [B

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v1, v5

    if-gez v8, :cond_2b

    .line 80
    :goto_16
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_4e

    .line 81
    iget-object v2, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->b:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v2}, Lcom/amazonaws/metrics/ByteThroughputHelper;->a()J

    move-result-wide v5

    .line 82
    invoke-virtual {p1, v3, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    iget-object v2, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->b:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v2, v1, v5, v6}, Lcom/amazonaws/metrics/ByteThroughputHelper;->a(IJ)V

    goto :goto_16

    :cond_2b
    :goto_2b
    cmp-long v8, v1, v5

    if-lez v8, :cond_4e

    const-wide/16 v8, 0x800

    .line 89
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v0, v3, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ne v8, v4, :cond_3d

    goto :goto_4e

    .line 93
    :cond_3d
    iget-object v9, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->b:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v9}, Lcom/amazonaws/metrics/ByteThroughputHelper;->a()J

    move-result-wide v9

    .line 94
    invoke-virtual {p1, v3, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 95
    iget-object v11, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->b:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v11, v8, v9, v10}, Lcom/amazonaws/metrics/ByteThroughputHelper;->a(IJ)V
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_57

    int-to-long v8, v8

    sub-long/2addr v1, v8

    goto :goto_2b

    .line 100
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->b:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {p1}, Lcom/amazonaws/metrics/ByteThroughputHelper;->b()V

    .line 101
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_57
    move-exception p1

    .line 100
    iget-object v1, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->b:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v1}, Lcom/amazonaws/metrics/ByteThroughputHelper;->b()V

    .line 101
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 102
    throw p1

    .line 70
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .line 50
    instance-of v0, p1, Lcom/amazonaws/internal/MetricAware;

    if-eqz v0, :cond_11

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 55
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 57
    invoke-super {p0, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void

    .line 61
    :cond_11
    invoke-direct {p0, p1}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->a(Ljava/io/OutputStream;)V

    return-void
.end method

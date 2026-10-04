###### Class com.amazonaws.metrics.ByteThroughputHelper (com.amazonaws.metrics.ByteThroughputHelper)
.class Lcom/amazonaws/metrics/ByteThroughputHelper;
.super Lcom/amazonaws/metrics/ByteThroughputProvider;
.source "ByteThroughputHelper.java"


# static fields
.field private static final a:I = 0xa


# direct methods
.method constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/amazonaws/metrics/ByteThroughputProvider;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V

    return-void
.end method


# virtual methods
.method a()J
    .registers 6

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    .line 35
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->b()V

    .line 37
    :cond_13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(IJ)V
    .registers 4

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/metrics/ByteThroughputProvider;->a(IJ)V

    return-void
.end method

.method b()V
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->d()I

    move-result v0

    if-lez v0, :cond_10

    .line 42
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/ServiceMetricCollector;->a(Lcom/amazonaws/metrics/ByteThroughputProvider;)V

    .line 44
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->g()V

    :cond_10
    return-void
.end method

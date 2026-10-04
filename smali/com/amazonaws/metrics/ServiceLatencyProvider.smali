###### Class com.amazonaws.metrics.ServiceLatencyProvider (com.amazonaws.metrics.ServiceLatencyProvider)
.class public Lcom/amazonaws/metrics/ServiceLatencyProvider;
.super Ljava/lang/Object;
.source "ServiceLatencyProvider.java"


# instance fields
.field private final a:J

.field private b:J

.field private final c:Lcom/amazonaws/metrics/ServiceMetricType;


# direct methods
.method public constructor <init>(Lcom/amazonaws/metrics/ServiceMetricType;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->a:J

    .line 27
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->a:J

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b:J

    .line 35
    iput-object p1, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->c:Lcom/amazonaws/metrics/ServiceMetricType;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/metrics/ServiceMetricType;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->c:Lcom/amazonaws/metrics/ServiceMetricType;

    return-object v0
.end method

.method public b()Lcom/amazonaws/metrics/ServiceLatencyProvider;
    .registers 6

    .line 51
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b:J

    return-object p0

    .line 52
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public c()D
    .registers 6

    .line 62
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    const-string v1, "Likely to be a missing invocation of endTiming()."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 66
    :cond_15
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->a:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;->b(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "providerId=%s, serviceMetricType=%s, startNano=%d, endNano=%d"

    const/4 v1, 0x4

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ServiceLatencyProvider;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->c:Lcom/amazonaws/metrics/ServiceMetricType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

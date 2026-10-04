###### Class com.amazonaws.services.s3.model.S3ObjectInputStream (com.amazonaws.services.s3.model.S3ObjectInputStream)
.class public Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "S3ObjectInputStream.java"


# instance fields
.field private final a:Lorg/apache/http/client/methods/HttpRequestBase;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a(Ljava/io/InputStream;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_a

    .line 59
    new-instance p3, Lcom/amazonaws/metrics/MetricFilterInputStream;

    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->f:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    invoke-direct {p3, v0, p1}, Lcom/amazonaws/metrics/MetricFilterInputStream;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V

    move-object p1, p3

    :cond_a
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Z
    .registers 3

    .line 71
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_8
    instance-of v0, p0, Lcom/amazonaws/internal/MetricAware;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 76
    check-cast p0, Lcom/amazonaws/internal/MetricAware;

    .line 79
    invoke-interface {p0}, Lcom/amazonaws/internal/MetricAware;->d()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_15
    return v1
.end method

.method private b()V
    .registers 4

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_12

    :catch_4
    move-exception v0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v1

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public available()I
    .registers 2

    .line 138
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->available()I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public g()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->b()V

    return-void
.end method

.method public read()I
    .registers 3

    .line 147
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->b:Z

    :cond_a
    return v0
.end method

.method public read([B)I
    .registers 4

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 4

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_a

    const/4 p2, 0x1

    .line 169
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->b:Z

    :cond_a
    return p1
.end method

.method public reset()V
    .registers 2

    .line 179
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->b:Z

    return-void
.end method

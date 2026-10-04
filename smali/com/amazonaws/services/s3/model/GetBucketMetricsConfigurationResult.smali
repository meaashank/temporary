###### Class com.amazonaws.services.s3.model.GetBucketMetricsConfigurationResult (com.amazonaws.services.s3.model.GetBucketMetricsConfigurationResult)
.class public Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
.super Ljava/lang/Object;
.source "GetBucketMetricsConfigurationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;->a:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;->a:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)V

    return-object p0
.end method

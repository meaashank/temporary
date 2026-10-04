###### Class com.amazonaws.services.s3.model.SetBucketMetricsConfigurationRequest (com.amazonaws.services.s3.model.SetBucketMetricsConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketMetricsConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    return-object v0
.end method

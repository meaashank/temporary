###### Class com.amazonaws.services.s3.model.SetBucketAnalyticsConfigurationRequest (com.amazonaws.services.s3.model.SetBucketAnalyticsConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketAnalyticsConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-object v0
.end method

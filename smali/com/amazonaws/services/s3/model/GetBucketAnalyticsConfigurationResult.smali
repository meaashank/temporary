###### Class com.amazonaws.services.s3.model.GetBucketAnalyticsConfigurationResult (com.amazonaws.services.s3.model.GetBucketAnalyticsConfigurationResult)
.class public Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
.super Ljava/lang/Object;
.source "GetBucketAnalyticsConfigurationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;->a:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;->a:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V

    return-object p0
.end method

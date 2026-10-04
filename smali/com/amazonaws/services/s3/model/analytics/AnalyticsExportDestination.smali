###### Class com.amazonaws.services.s3.model.analytics.AnalyticsExportDestination (com.amazonaws.services.s3.model.analytics.AnalyticsExportDestination)
.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;
.super Ljava/lang/Object;
.source "AnalyticsExportDestination.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->a:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->a:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)V

    return-object p0
.end method

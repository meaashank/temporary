###### Class com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport (com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport)
.class public Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
.super Ljava/lang/Object;
.source "StorageClassAnalysisDataExport.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;)V
    .registers 2

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 34
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    return-object v0
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;)Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a(Ljava/lang/String;)V

    return-object p0
.end method

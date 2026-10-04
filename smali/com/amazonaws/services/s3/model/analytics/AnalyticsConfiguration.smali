###### Class com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration (com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration)
.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
.super Ljava/lang/Object;
.source "AnalyticsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

.field private c:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;


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

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->c:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->c:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    return-object v0
.end method

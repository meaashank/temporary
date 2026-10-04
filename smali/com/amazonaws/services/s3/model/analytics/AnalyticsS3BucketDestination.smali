###### Class com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination (com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination)
.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
.super Ljava/lang/Object;
.source "AnalyticsS3BucketDestination.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


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

    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;)V
    .registers 2

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 36
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->a(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
    .registers 2

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->g(Ljava/lang/String;)V

    return-object p0
.end method

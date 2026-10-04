###### Class com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsRequest (com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsRequest)
.class public Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListBucketMetricsConfigurationsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

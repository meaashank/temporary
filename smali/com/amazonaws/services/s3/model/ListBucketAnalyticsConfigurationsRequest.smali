###### Class com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsRequest (com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsRequest)
.class public Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListBucketAnalyticsConfigurationsRequest.java"

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

    .line 53
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

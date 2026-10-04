###### Class com.amazonaws.services.s3.model.ListBucketInventoryConfigurationsRequest (com.amazonaws.services.s3.model.ListBucketInventoryConfigurationsRequest)
.class public Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListBucketInventoryConfigurationsRequest.java"

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

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;
    .registers 2

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

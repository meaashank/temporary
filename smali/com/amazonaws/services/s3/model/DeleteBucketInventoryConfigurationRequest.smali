###### Class com.amazonaws.services.s3.model.DeleteBucketInventoryConfigurationRequest (com.amazonaws.services.s3.model.DeleteBucketInventoryConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketInventoryConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->b:Ljava/lang/String;

    return-object v0
.end method

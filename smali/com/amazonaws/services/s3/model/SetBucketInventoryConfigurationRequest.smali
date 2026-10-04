###### Class com.amazonaws.services.s3.model.SetBucketInventoryConfigurationRequest (com.amazonaws.services.s3.model.SetBucketInventoryConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketInventoryConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    return-object v0
.end method

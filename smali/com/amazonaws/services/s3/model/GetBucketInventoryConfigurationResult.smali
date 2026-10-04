###### Class com.amazonaws.services.s3.model.GetBucketInventoryConfigurationResult (com.amazonaws.services.s3.model.GetBucketInventoryConfigurationResult)
.class public Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
.super Ljava/lang/Object;
.source "GetBucketInventoryConfigurationResult.java"


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;->a:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;->a:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)V

    return-object p0
.end method

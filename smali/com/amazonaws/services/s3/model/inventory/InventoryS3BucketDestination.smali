###### Class com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination (com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination)
.class public Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;
.super Ljava/lang/Object;
.source "InventoryS3BucketDestination.java"

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryFormat;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 105
    check-cast p1, Ljava/lang/String;

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFormat;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryFormat;)Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryFormat;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;
    .registers 2

    .line 152
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->g(Ljava/lang/String;)V

    return-object p0
.end method

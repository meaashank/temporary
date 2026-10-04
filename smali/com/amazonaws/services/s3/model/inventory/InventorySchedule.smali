###### Class com.amazonaws.services.s3.model.inventory.InventorySchedule (com.amazonaws.services.s3.model.inventory.InventorySchedule)
.class public Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;
.super Ljava/lang/Object;
.source "InventorySchedule.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryFrequency;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 46
    check-cast p1, Ljava/lang/String;

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFrequency;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryFrequency;)Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryFrequency;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->a(Ljava/lang/String;)V

    return-object p0
.end method

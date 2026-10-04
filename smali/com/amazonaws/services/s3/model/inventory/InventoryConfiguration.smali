###### Class com.amazonaws.services.s3.model.inventory.InventoryConfiguration (com.amazonaws.services.s3.model.inventory.InventoryConfiguration)
.class public Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
.super Ljava/lang/Object;
.source "InventoryConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

.field private c:Ljava/lang/Boolean;

.field private d:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->b:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryIncludedObjectVersions;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 186
    check-cast p1, Ljava/lang/String;

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryIncludedObjectVersions;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryOptionalField;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 239
    check-cast p1, Ljava/lang/String;

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryOptionalField;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->g:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f:Ljava/util/List;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryIncludedObjectVersions;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryIncludedObjectVersions;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 263
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b()Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->b:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f:Ljava/util/List;

    if-nez v0, :cond_e

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f:Ljava/util/List;

    .line 232
    :cond_e
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->g:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    return-object v0
.end method

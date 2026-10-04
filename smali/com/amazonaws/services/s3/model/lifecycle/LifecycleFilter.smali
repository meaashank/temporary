###### Class com.amazonaws.services.s3.model.lifecycle.LifecycleFilter (com.amazonaws.services.s3.model.lifecycle.LifecycleFilter)
.class public Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;
.super Ljava/lang/Object;
.source "LifecycleFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->a:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->a:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->a:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    return-object p0
.end method

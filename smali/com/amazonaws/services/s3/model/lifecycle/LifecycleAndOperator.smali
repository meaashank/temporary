###### Class com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator (com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator)
.class public final Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;
.super Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;
.source "LifecycleAndOperator.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/List;
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V
    .registers 2

    .line 37
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;->a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;)V

    return-void
.end method

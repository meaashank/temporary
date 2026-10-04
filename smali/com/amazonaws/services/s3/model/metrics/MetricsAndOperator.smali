###### Class com.amazonaws.services.s3.model.metrics.MetricsAndOperator (com.amazonaws.services.s3.model.metrics.MetricsAndOperator)
.class public final Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;
.super Lcom/amazonaws/services/s3/model/metrics/MetricsNAryOperator;
.source "MetricsAndOperator.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsNAryOperator;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/List;
    .registers 2

    .line 26
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsNAryOperator;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;)V
    .registers 2

    .line 38
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;)V

    return-void
.end method

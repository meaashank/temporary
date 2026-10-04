###### Class com.amazonaws.services.s3.model.metrics.MetricsPrefixPredicate (com.amazonaws.services.s3.model.metrics.MetricsPrefixPredicate)
.class public final Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;
.super Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;
.source "MetricsPrefixPredicate.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;)V
    .registers 2

    .line 42
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;)V

    return-void
.end method

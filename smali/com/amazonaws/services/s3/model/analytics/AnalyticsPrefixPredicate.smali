###### Class com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate (com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate)
.class public final Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;
.super Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;
.source "AnalyticsPrefixPredicate.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;)V
    .registers 2

    .line 42
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;)V

    return-void
.end method

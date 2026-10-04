###### Class com.amazonaws.metrics.SimpleThroughputMetricType (com.amazonaws.metrics.SimpleThroughputMetricType)
.class public Lcom/amazonaws/metrics/SimpleThroughputMetricType;
.super Lcom/amazonaws/metrics/SimpleServiceMetricType;
.source "SimpleThroughputMetricType.java"

# interfaces
.implements Lcom/amazonaws/metrics/ThroughputMetricType;


# instance fields
.field private final e:Lcom/amazonaws/metrics/ServiceMetricType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/amazonaws/metrics/SimpleServiceMetricType;

    invoke-direct {p1, p3, p2}, Lcom/amazonaws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazonaws/metrics/SimpleThroughputMetricType;->e:Lcom/amazonaws/metrics/ServiceMetricType;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/metrics/ServiceMetricType;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/amazonaws/metrics/SimpleThroughputMetricType;->e:Lcom/amazonaws/metrics/ServiceMetricType;

    return-object v0
.end method

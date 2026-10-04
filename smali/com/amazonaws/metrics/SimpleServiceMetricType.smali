###### Class com.amazonaws.metrics.SimpleServiceMetricType (com.amazonaws.metrics.SimpleServiceMetricType)
.class public Lcom/amazonaws/metrics/SimpleServiceMetricType;
.super Lcom/amazonaws/metrics/SimpleMetricType;
.source "SimpleServiceMetricType.java"

# interfaces
.implements Lcom/amazonaws/metrics/ServiceMetricType;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/metrics/SimpleMetricType;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazonaws/metrics/SimpleServiceMetricType;->e:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazonaws/metrics/SimpleServiceMetricType;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/amazonaws/metrics/SimpleServiceMetricType;->f:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/metrics/SimpleServiceMetricType;->e:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.metrics.MetricsConfiguration (com.amazonaws.services.s3.model.metrics.MetricsConfiguration)
.class public Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
.super Ljava/lang/Object;
.source "MetricsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;


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

    .line 31
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->b:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->b:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    return-object v0
.end method

###### Class com.amazonaws.metrics.MetricCollector (com.amazonaws.metrics.MetricCollector)
.class public abstract Lcom/amazonaws/metrics/MetricCollector;
.super Ljava/lang/Object;
.source "MetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/metrics/MetricCollector$Factory;
    }
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/metrics/MetricCollector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/amazonaws/metrics/MetricCollector$1;

    invoke-direct {v0}, Lcom/amazonaws/metrics/MetricCollector$1;-><init>()V

    sput-object v0, Lcom/amazonaws/metrics/MetricCollector;->a:Lcom/amazonaws/metrics/MetricCollector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Lcom/amazonaws/metrics/RequestMetricCollector;
.end method

.method public abstract e()Lcom/amazonaws/metrics/ServiceMetricCollector;
.end method

###### Class com.amazonaws.metrics.MetricCollector.AnonymousClass1 (com.amazonaws.metrics.MetricCollector$1)
.class final Lcom/amazonaws/metrics/MetricCollector$1;
.super Lcom/amazonaws/metrics/MetricCollector;
.source "MetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/MetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/amazonaws/metrics/MetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lcom/amazonaws/metrics/RequestMetricCollector;
    .registers 2

    .line 80
    sget-object v0, Lcom/amazonaws/metrics/RequestMetricCollector;->a:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public e()Lcom/amazonaws/metrics/ServiceMetricCollector;
    .registers 2

    .line 85
    sget-object v0, Lcom/amazonaws/metrics/ServiceMetricCollector;->a:Lcom/amazonaws/metrics/ServiceMetricCollector;

    return-object v0
.end method

###### Class com.amazonaws.metrics.MetricCollector.Factory (com.amazonaws.metrics.MetricCollector$Factory)
.class public interface abstract Lcom/amazonaws/metrics/MetricCollector$Factory;
.super Ljava/lang/Object;
.source "MetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/MetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract a()Lcom/amazonaws/metrics/MetricCollector;
.end method

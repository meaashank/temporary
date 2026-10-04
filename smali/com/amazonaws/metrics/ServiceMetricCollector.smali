###### Class com.amazonaws.metrics.ServiceMetricCollector (com.amazonaws.metrics.ServiceMetricCollector)
.class public abstract Lcom/amazonaws/metrics/ServiceMetricCollector;
.super Ljava/lang/Object;
.source "ServiceMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/metrics/ServiceMetricCollector$Factory;
    }
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/metrics/ServiceMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lcom/amazonaws/metrics/ServiceMetricCollector$1;

    invoke-direct {v0}, Lcom/amazonaws/metrics/ServiceMetricCollector$1;-><init>()V

    sput-object v0, Lcom/amazonaws/metrics/ServiceMetricCollector;->a:Lcom/amazonaws/metrics/ServiceMetricCollector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/amazonaws/metrics/ByteThroughputProvider;)V
.end method

.method public abstract a(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.amazonaws.metrics.ServiceMetricCollector.AnonymousClass1 (com.amazonaws.metrics.ServiceMetricCollector$1)
.class final Lcom/amazonaws/metrics/ServiceMetricCollector$1;
.super Lcom/amazonaws/metrics/ServiceMetricCollector;
.source "ServiceMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/ServiceMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/amazonaws/metrics/ServiceMetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/metrics/ByteThroughputProvider;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V
    .registers 2

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.amazonaws.metrics.ServiceMetricCollector.Factory (com.amazonaws.metrics.ServiceMetricCollector$Factory)
.class public interface abstract Lcom/amazonaws/metrics/ServiceMetricCollector$Factory;
.super Ljava/lang/Object;
.source "ServiceMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/ServiceMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract a()Lcom/amazonaws/metrics/ServiceMetricCollector;
.end method

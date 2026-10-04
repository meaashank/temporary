###### Class com.amazonaws.metrics.ServiceMetricType (com.amazonaws.metrics.ServiceMetricType)
.class public interface abstract Lcom/amazonaws/metrics/ServiceMetricType;
.super Ljava/lang/Object;
.source "ServiceMetricType.java"

# interfaces
.implements Lcom/amazonaws/metrics/MetricType;


# static fields
.field public static final a:Ljava/lang/String; = "UploadThroughput"

.field public static final b:Ljava/lang/String; = "UploadByteCount"

.field public static final c:Ljava/lang/String; = "DownloadThroughput"

.field public static final d:Ljava/lang/String; = "DownloadByteCount"


# virtual methods
.method public abstract getServiceName()Ljava/lang/String;
.end method

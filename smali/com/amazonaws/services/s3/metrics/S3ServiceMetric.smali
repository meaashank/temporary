###### Class com.amazonaws.services.s3.metrics.S3ServiceMetric (com.amazonaws.services.s3.metrics.S3ServiceMetric)
.class public Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.super Lcom/amazonaws/metrics/SimpleMetricType;
.source "S3ServiceMetric.java"

# interfaces
.implements Lcom/amazonaws/metrics/ServiceMetricType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
    }
.end annotation


# static fields
.field static final e:Ljava/lang/String; = "S3"

.field public static final f:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final g:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final h:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final i:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field private static final j:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;


# instance fields
.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    const-string v1, "DownloadThroughput"

    .line 45
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->f:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 55
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "DownloadByteCount"

    .line 56
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->g:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 61
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;

    const-string v1, "UploadThroughput"

    .line 62
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->h:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 72
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "UploadByteCount"

    .line 73
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->i:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v0, 0x4

    .line 75
    new-array v0, v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->f:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->g:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->h:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->i:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->j:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/amazonaws/metrics/SimpleMetricType;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->k:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .registers 6

    .line 117
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 118
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 122
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No S3ServiceMetric defined for the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .registers 1

    .line 109
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->j:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .registers 2

    const-string v0, "Amazon S3"

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->k:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.metrics.S3ServiceMetric.AnonymousClass1 (com.amazonaws.services.s3.metrics.S3ServiceMetric$1)
.class final Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;
.super Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
.source "S3ServiceMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/metrics/ServiceMetricType;
    .registers 2

    .line 48
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;->g:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.metrics.S3ServiceMetric.AnonymousClass2 (com.amazonaws.services.s3.metrics.S3ServiceMetric$2)
.class final Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;
.super Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
.source "S3ServiceMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/metrics/ServiceMetricType;
    .registers 2

    .line 65
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;->i:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.metrics.S3ServiceMetric.S3ThroughputMetric (com.amazonaws.services.s3.metrics.S3ServiceMetric$S3ThroughputMetric)
.class abstract Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
.super Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.source "S3ServiceMetric.java"

# interfaces
.implements Lcom/amazonaws/metrics/ThroughputMetricType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "S3ThroughputMetric"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .registers 3

    .line 98
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

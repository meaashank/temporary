###### Class com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsResult (com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsResult)
.class public Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
.super Ljava/lang/Object;
.source "ListBucketMetricsConfigurationsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->a:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->a(Z)V

    return-object p0
.end method

.method public b()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .registers 2

    .line 196
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->d:Ljava/lang/String;

    return-object v0
.end method

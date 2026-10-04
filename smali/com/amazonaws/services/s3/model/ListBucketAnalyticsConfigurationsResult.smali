###### Class com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsResult (com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsResult)
.class public Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
.super Ljava/lang/Object;
.source "ListBucketAnalyticsConfigurationsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;",
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
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->a:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
    .registers 2

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
    .registers 2

    .line 114
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->a(Z)V

    return-object p0
.end method

.method public b()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->d:Ljava/lang/String;

    return-object v0
.end method

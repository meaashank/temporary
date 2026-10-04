###### Class com.amazonaws.services.s3.model.BucketWebsiteConfiguration (com.amazonaws.services.s3.model.BucketWebsiteConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
.super Ljava/lang/Object;
.source "BucketWebsiteConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/s3/model/RedirectRule;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/RedirectRule;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->c:Lcom/amazonaws/services/s3/model/RedirectRule;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;)V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/RedirectRule;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->c:Lcom/amazonaws/services/s3/model/RedirectRule;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/amazonaws/services/s3/model/RedirectRule;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->c:Lcom/amazonaws/services/s3/model/RedirectRule;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    return-object v0
.end method

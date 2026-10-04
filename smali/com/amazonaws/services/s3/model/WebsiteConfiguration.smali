###### Class com.amazonaws.services.s3.model.WebsiteConfiguration (com.amazonaws.services.s3.model.WebsiteConfiguration)
.class public Lcom/amazonaws/services/s3/model/WebsiteConfiguration;
.super Ljava/lang/Object;
.source "WebsiteConfiguration.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->a:Ljava/lang/String;

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

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->d:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/WebsiteConfiguration;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/WebsiteConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/WebsiteConfiguration;"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->d:Ljava/util/List;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/WebsiteConfiguration;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->b:Ljava/lang/String;

    return-object p0
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

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->d:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/WebsiteConfiguration;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/WebsiteConfiguration;->c:Ljava/lang/String;

    return-object p0
.end method

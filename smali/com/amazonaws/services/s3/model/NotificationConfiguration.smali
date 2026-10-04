###### Class com.amazonaws.services.s3.model.NotificationConfiguration (com.amazonaws.services.s3.model.NotificationConfiguration)
.class public abstract Lcom/amazonaws/services/s3/model/NotificationConfiguration;
.super Ljava/lang/Object;
.source "NotificationConfiguration.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:Lcom/amazonaws/services/s3/model/Filter;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/EnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazonaws/services/s3/model/S3Event;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    if-eqz p1, :cond_2d

    .line 57
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3Event;

    .line 58
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    if-eqz p1, :cond_21

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_21

    aget-object v2, p1, v1

    .line 72
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_21
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_13

    .line 132
    array-length v0, p1

    if-lez v0, :cond_13

    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_13
    return-object p0
.end method

.method public a(Lcom/amazonaws/services/s3/model/Filter;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->c:Lcom/amazonaws/services/s3/model/Filter;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/S3Event;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Event;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/Filter;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .registers 2

    .line 194
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a(Lcom/amazonaws/services/s3/model/Filter;)V

    return-object p0
.end method

.method public b(Ljava/util/Set;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a:Ljava/util/Set;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcom/amazonaws/services/s3/model/Filter;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->c:Lcom/amazonaws/services/s3/model/Filter;

    return-object v0
.end method

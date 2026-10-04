###### Class com.amazonaws.services.s3.model.BucketNotificationConfiguration (com.amazonaws.services.s3.model.BucketNotificationConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
.super Ljava/lang/Object;
.source "BucketNotificationConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    if-eqz p1, :cond_2b

    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    .line 196
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    goto :goto_13

    :cond_2b
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public varargs a([Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_23

    .line 243
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    .line 244
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    goto :goto_b

    :cond_23
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    return-object p1
.end method

.method public b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    .line 273
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    if-eqz v3, :cond_f

    .line 275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 283
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.BucketNotificationConfiguration.TopicConfiguration (com.amazonaws.services.s3.model.BucketNotificationConfiguration$TopicConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;
.super Lcom/amazonaws/services/s3/model/TopicConfiguration;
.source "BucketNotificationConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicConfiguration"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 312
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/TopicConfiguration;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 324
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->c()Ljava/util/Set;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 340
    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 345
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

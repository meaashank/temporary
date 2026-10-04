###### Class com.amazonaws.services.s3.model.BucketReplicationConfiguration (com.amazonaws.services.s3.model.BucketReplicationConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
.super Ljava/lang/Object;
.source "BucketReplicationConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ReplicationRule;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .registers 4

    if-eqz p1, :cond_1c

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_14

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 124
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Replication rule cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rule id cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->b:Ljava/util/Map;

    return-void

    .line 88
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Replication rules cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->a(Ljava/util/Map;)V

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ReplicationRule;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

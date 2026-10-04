###### Class com.amazonaws.services.s3.model.ReplicationDestinationConfig (com.amazonaws.services.s3.model.ReplicationDestinationConfig)
.class public Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
.super Ljava/lang/Object;
.source "ReplicationDestinationConfig.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 81
    check-cast p1, Ljava/lang/String;

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->a:Ljava/lang/String;

    return-void

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bucket name cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 104
    check-cast p1, Ljava/lang/String;

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->c(Ljava/lang/String;)V

    return-object p0
.end method

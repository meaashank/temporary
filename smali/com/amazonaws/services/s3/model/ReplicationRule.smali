###### Class com.amazonaws.services.s3.model.ReplicationRule (com.amazonaws.services.s3.model.ReplicationRule)
.class public Lcom/amazonaws/services/s3/model/ReplicationRule;
.super Ljava/lang/Object;
.source "ReplicationRule.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->c:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    return-void

    .line 138
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destination cannot be null in the replication rule"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;)V
    .registers 2

    .line 108
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->a:Ljava/lang/String;

    return-void

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix cannot be null for a replication rule"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .registers 2

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->a(Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .registers 2

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->c:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->c(Ljava/lang/String;)V

    return-object p0
.end method

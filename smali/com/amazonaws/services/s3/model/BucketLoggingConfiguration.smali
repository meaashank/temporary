###### Class com.amazonaws.services.s3.model.BucketLoggingConfiguration (com.amazonaws.services.s3.model.BucketLoggingConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
.super Ljava/lang/Object;
.source "BucketLoggingConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    .line 112
    :cond_4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggingConfiguration enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", destinationBucketName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", logFilePrefix="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    return-object v0
.end method

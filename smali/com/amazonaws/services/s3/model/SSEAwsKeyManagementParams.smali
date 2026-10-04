###### Class com.amazonaws.services.s3.model.SSEAwsKeyManagementParams (com.amazonaws.services.s3.model.SSEAwsKeyManagementParams)
.class public Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
.super Ljava/lang/Object;
.source "SSEAwsKeyManagementParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->a:Ljava/lang/String;

    return-void

    .line 40
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AWS Key Management System Key id cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 59
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

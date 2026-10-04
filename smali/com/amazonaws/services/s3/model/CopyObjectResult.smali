###### Class com.amazonaws.services.s3.model.CopyObjectResult (com.amazonaws.services.s3.model.CopyObjectResult)
.class public Lcom/amazonaws/services/s3/model/CopyObjectResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "CopyObjectResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazonaws/services/s3/internal/S3VersionResult;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->d:Ljava/util/Date;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->d:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 180
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->f:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Date;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->b:Ljava/util/Date;

    return-void
.end method

.method public c()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->f:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->a:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/Date;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->b:Ljava/util/Date;

    return-object v0
.end method

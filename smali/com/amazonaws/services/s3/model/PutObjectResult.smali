###### Class com.amazonaws.services.s3.model.PutObjectResult (com.amazonaws.services.s3.model.PutObjectResult)
.class public Lcom/amazonaws/services/s3/model/PutObjectResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "PutObjectResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazonaws/services/s3/internal/S3VersionResult;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->c:Ljava/util/Date;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->f:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->c:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->g:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->g:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->b:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->e:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->f:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

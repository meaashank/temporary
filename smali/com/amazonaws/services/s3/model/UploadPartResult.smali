###### Class com.amazonaws.services.s3.model.UploadPartResult (com.amazonaws.services.s3.model.UploadPartResult)
.class public Lcom/amazonaws/services/s3/model/UploadPartResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "UploadPartResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->c:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->c:Z

    return v0
.end method

.method public d()Lcom/amazonaws/services/s3/model/PartETag;
    .registers 4

    .line 85
    new-instance v0, Lcom/amazonaws/services/s3/model/PartETag;

    iget v1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->a:I

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

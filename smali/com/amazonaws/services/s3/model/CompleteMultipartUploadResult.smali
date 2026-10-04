###### Class com.amazonaws.services.s3.model.CompleteMultipartUploadResult (com.amazonaws.services.s3.model.CompleteMultipartUploadResult)
.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "CompleteMultipartUploadResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->f:Ljava/util/Date;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->f:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 205
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->h:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->h:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->a:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->d:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->e:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->e:Ljava/lang/String;

    return-object v0
.end method

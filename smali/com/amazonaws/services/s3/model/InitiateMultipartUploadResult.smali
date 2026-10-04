###### Class com.amazonaws.services.s3.model.InitiateMultipartUploadResult (com.amazonaws.services.s3.model.InitiateMultipartUploadResult)
.class public Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "InitiateMultipartUploadResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->d:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 152
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->f:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->d:Ljava/util/Date;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->c:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->e:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->f:Z

    return v0
.end method

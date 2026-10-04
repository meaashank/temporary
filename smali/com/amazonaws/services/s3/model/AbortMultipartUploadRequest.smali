###### Class com.amazonaws.services.s3.model.AbortMultipartUploadRequest (com.amazonaws.services.s3.model.AbortMultipartUploadRequest)
.class public Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AbortMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 189
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->d:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .registers 2

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->d:Z

    return v0
.end method

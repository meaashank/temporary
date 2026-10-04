###### Class com.amazonaws.services.s3.model.MultipartUpload (com.amazonaws.services.s3.model.MultipartUpload)
.class public Lcom/amazonaws/services/s3/model/MultipartUpload;
.super Ljava/lang/Object;
.source "MultipartUpload.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/s3/model/Owner;

.field private d:Lcom/amazonaws/services/s3/model/Owner;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/Owner;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->c:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->f:Ljava/util/Date;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/amazonaws/services/s3/model/Owner;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->d:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/amazonaws/services/s3/model/Owner;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->c:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/amazonaws/services/s3/model/Owner;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->d:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->f:Ljava/util/Date;

    return-object v0
.end method

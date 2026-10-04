###### Class com.amazonaws.services.s3.model.S3Object (com.amazonaws.services.s3.model.S3Object)
.class public Lcom/amazonaws/services/s3/model/S3Object;
.super Ljava/lang/Object;
.source "S3Object.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private transient d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->a:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->c:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->c:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->c:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 4

    .line 129
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 130
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-direct {v0, p1, v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/S3Object;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->f:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 234
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->g:Z

    return-void
.end method

.method public b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->g:Z

    return v0
.end method

.method public close()V
    .registers 2

    .line 222
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 223
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V

    :cond_d
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Object [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    if-nez v1, :cond_1d

    const-string v1, "<Unknown>"

    goto :goto_1f

    :cond_1d
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

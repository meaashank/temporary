###### Class com.amazonaws.services.s3.model.EncryptedGetObjectRequest (com.amazonaws.services.s3.model.EncryptedGetObjectRequest)
.class public Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
.super Lcom/amazonaws/services/s3/model/GetObjectRequest;
.source "EncryptedGetObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 44
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 67
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->e(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->g(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 131
    :cond_4
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_a
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->a(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)V

    return-object p0
.end method

.method public a(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)V
    .registers 2

    if-nez p1, :cond_4

    .line 101
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    :cond_4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 197
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->c:Z

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .registers 2

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->a(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .registers 2

    .line 204
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->c:Z

    return-object p0
.end method

.method public h()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->c:Z

    return v0
.end method

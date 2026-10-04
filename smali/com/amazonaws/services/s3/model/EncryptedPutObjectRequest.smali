###### Class com.amazonaws.services.s3.model.EncryptedPutObjectRequest (com.amazonaws.services.s3.model.EncryptedPutObjectRequest)
.class public Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;
.super Lcom/amazonaws/services/s3/model/PutObjectRequest;
.source "EncryptedPutObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_d

    .line 69
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_d
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->a:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->a(Ljava/util/Map;)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public j_()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->a:Ljava/util/Map;

    return-object v0
.end method

.method public synthetic u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;
    .registers 5

    .line 91
    new-instance v0, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    .line 93
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->k()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 94
    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 95
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->j_()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_22

    .line 96
    :cond_1c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    :goto_22
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    return-object v0
.end method

.method public synthetic w()Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

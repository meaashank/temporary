###### Class com.amazonaws.services.s3.model.EncryptedInitiateMultipartUploadRequest (com.amazonaws.services.s3.model.EncryptedInitiateMultipartUploadRequest)
.class public Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;
.super Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
.source "EncryptedInitiateMultipartUploadRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->c:Z

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

    .line 77
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_d
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->b:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->c:Z

    return-void
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->a(Ljava/util/Map;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;
    .registers 2

    .line 118
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->c:Z

    return-object p0
.end method

.method public i()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->c:Z

    return v0
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

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->b:Ljava/util/Map;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.transform.MultiObjectDeleteXmlFactory (com.amazonaws.services.s3.model.transform.MultiObjectDeleteXmlFactory)
.class public Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;
.super Ljava/lang/Object;
.source "MultiObjectDeleteXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;)V
    .registers 5

    const-string v0, "Object"

    .line 53
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Key"

    .line 54
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 55
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v0, "VersionId"

    .line 56
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 58
    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)[B
    .registers 5

    .line 37
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "Delete"

    .line 38
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->j()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "Quiet"

    .line 40
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 43
    :cond_1f
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;)V

    goto :goto_27

    .line 47
    :cond_37
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 49
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

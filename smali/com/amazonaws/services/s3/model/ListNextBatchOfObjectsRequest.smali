###### Class com.amazonaws.services.s3.model.ListNextBatchOfObjectsRequest (com.amazonaws.services.s3.model.ListNextBatchOfObjectsRequest)
.class public Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListNextBatchOfObjectsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/ObjectListing;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/ObjectListing;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a(Lcom/amazonaws/services/s3/model/ObjectListing;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/ObjectListing;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    return-void

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The parameter previousObjectListing must be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a(Lcom/amazonaws/services/s3/model/ObjectListing;)V

    return-object p0
.end method

.method public h()Lcom/amazonaws/services/s3/model/ObjectListing;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .registers 8

    .line 75
    new-instance v6, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 76
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 77
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 78
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 79
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->a:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 80
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v0

    return-object v0
.end method
